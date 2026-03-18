# GUI selection

Choose the human GUI pattern with this order of evaluation:

1. Is there an existing application that already shows the real constraints the human must care about?
2. Is the system primarily about editing content, or primarily about managing records and workflow?
3. Does the human need a launcher, dashboard, status view, or conflict resolver separate from the editing surface?

Choose `native-gui-reuse` when:

- layout, wrapping, print, or spreadsheet constraints matter in the native tool
- the user already works naturally in that tool
- the native tool is effectively part of validation

Choose `custom-gui` when:

- search, filtering, approval, state, and workflow dominate
- no existing GUI is a natural editing truth
- a unified web or desktop UI makes the work clearer

Choose `hybrid-gui` when:

- management and editing are both important
- the best editing surface is an existing tool
- the best overview surface is a custom launcher or dashboard
