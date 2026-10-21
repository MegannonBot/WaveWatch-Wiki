# LogRow

One line of a log: the time in a fixed 52px mono column, the family shape, then what and where.

- Grid: 52px time, 18px shape, the rest for text; at least `touch-target` high.
- Time in `time` style; what in `body`, where in `small` `ink-muted`.
- Rows are separated by `divider` hairlines; a selected row takes `surface-2`.
- Used in On this watch, the reports feed, response logs and timelines.
