from typing import List
import sys
from kitty.boss import Boss


# in main, STDIN is for the kitten process and will contain
# the contents of the screen
def main(args: List[str]) -> str:
    return sys.stdin.read()


# in handle_result, STDIN is for the kitty process itself, rather
# than the kitten process and should not be read from.
from kittens.tui.handler import result_handler


@result_handler(type_of_input="text")
def handle_result(
    args: List[str], stdin_data: str, target_window_id: int, boss: Boss
) -> None:
    # Change layout to horizontal
    boss.change_layout("horizontal")

    # Create a new window on each side of the current one.
    # Assuming a function to directly specify the command exists (you may need to adapt this).
    boss.new_window()
    # The middle window should run `newsboat`. This is a placeholder for the actual implementation.
    # You would typically need to use the `launch` method with appropriate arguments to run a command.
    boss.launch("newsboat")
    boss.new_window()

    # No explicit focus call might be needed if the window running `newsboat` gains focus automatically.
    # Otherwise, focus the window as before.
