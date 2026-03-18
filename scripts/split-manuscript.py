#!/usr/bin/env python3
"""
Opdeler felt-64-komplet.md i individuelle kapitler baseret på H1-overskrifter.
Bruges af review-systemet til at fodre kapitler til agenter individuelt.
"""

import sys
import re
from pathlib import Path


def split_manuscript(input_path: str, output_dir: str) -> None:
    input_file = Path(input_path)
    out_dir = Path(output_dir)
    out_dir.mkdir(parents=True, exist_ok=True)

    text = input_file.read_text(encoding="utf-8")

    # Split on H1 headers: lines starting with "# "
    # Keep the header with the content that follows it
    sections = re.split(r"(?=^# )", text, flags=re.MULTILINE)

    # Remove empty first section if text doesn't start with #
    sections = [s for s in sections if s.strip()]

    chapter_index = 0
    for section in sections:
        # Extract chapter title from first line
        first_line = section.strip().split("\n")[0]
        title = first_line.lstrip("# ").strip()

        # Create a slug for filename
        slug = _slugify(title)

        # Determine prefix
        prefix = f"{chapter_index:02d}"
        filename = f"{prefix}-{slug}.md"

        output_path = out_dir / filename
        output_path.write_text(section.strip() + "\n", encoding="utf-8")

        word_count = len(section.split())
        print(f"  {filename} ({word_count} ord)")

        chapter_index += 1

    print(f"\nTotal: {chapter_index} sektioner opdelt")


def _slugify(text: str) -> str:
    """Convert a title to a filesystem-safe slug."""
    # Danish character mappings
    replacements = {
        "æ": "ae", "ø": "oe", "å": "aa",
        "Æ": "Ae", "Ø": "Oe", "Å": "Aa",
    }
    for char, repl in replacements.items():
        text = text.replace(char, repl)

    # Lowercase, replace non-alphanumeric with hyphens
    text = text.lower()
    text = re.sub(r"[^a-z0-9]+", "-", text)
    text = text.strip("-")

    # Truncate
    return text[:60]


if __name__ == "__main__":
    if len(sys.argv) != 3:
        print(f"Brug: {sys.argv[0]} <input.md> <output-dir>")
        sys.exit(1)

    split_manuscript(sys.argv[1], sys.argv[2])
