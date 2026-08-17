# Game Design — Reference Projects

Finished reference builds for **Fundamentals of Game Design**, one Godot project per
game. These are the instructor's copies: the course activities are cut from them, and
every clip specification names a state in here.

**Godot 4.7.1.stable**, pinned. The course's editor captures are version-locked, so a
minor-release bump moves UI and invalidates figures.

## Projects

| Folder | Game | Course units |
|---|---|---|
| `junkyard/` | Physics demolition sandbox | 1–2 |
| `shooter/` | Vertical space shooter | 3 |
| `platformer/` | Run, jump, shoot | 5–6 |

## Tags are the point

**Every activity's end state is a git tag** — `junkyard/1-3`, `shooter/3-5`. GitHub
generates a downloadable zip per tag automatically, and since `.godot/` is gitignored
those zips are clean, valid projects.

That gives two things at once:

- A student who breaks their project mid-unit downloads the previous activity's tag and
  keeps working, instead of losing the period.
- Every screen-recording specification has an exact starting state, so recording a clip
  never means reconstructing a project by hand first.

A tag's name matches the activity whose work it contains. `junkyard/1-3` is the project
as it stands **after** Activity 1.3, which is also the starting state for Activity 1.4.

## Conventions

These projects model the five structural rules the course teaches, because students
read them as worked examples:

1. Scripts attach to root nodes only, never to a child.
2. Node trees are two levels deep at most — a root and its components.
3. Node references are cached in `_ready()` at the top of the script. Never
   `get_node()` mid-logic.
4. Signals are for one-way notification only. Everything else is a direct method call.
5. **One folder per reusable scene**, holding its scene, its script, and its art.

`snake_case` for variables and functions, `PascalCase` for nodes and scene files.

## Rendering

All projects use the **GL Compatibility** renderer rather than Forward+. It is the
reliable choice for web export on the school's Chromebooks, and the games are 2D.

## Assets

Everything committed here is **CC0**, because these projects are distributed to students
as zips and that is redistribution. Kenney packs carry their `license.txt` alongside the
art they came from.
