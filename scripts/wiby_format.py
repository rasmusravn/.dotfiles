#!/usr/bin/python3
import sys
from rich.console import Console
from rich.table import Table


def display_results(results):
    table = Table(title="Search Results")
    table.add_column("URL", style="cyan", no_wrap=True)
    table.add_column("Preview", style="green")

    for result in results:
        # Assuming each result is in the format "url preview"
        parts = result.split(" ", 1)
        if len(parts) == 2:
            url, preview = parts
        else:
            url = parts[0]
            preview = ""
        table.add_row(url, preview)

    console = Console()
    console.print(table)


if __name__ == "__main__":
    results = [line.strip() for line in sys.stdin.readlines() if line.strip()]
    display_results(results)
