# Damaged bridge models and whole-bridge repair — v44

2026-11-17, Windows Steam Gathering Storm, single-player, build 26407122.
The native crossing DLL is byte-identical to v43. Placement and endpoint rules are unchanged.

## Publication status

The 93-file v44 candidate is frozen and verified (205,018,149 bytes).
Workshop publication is pending: Steam returned `k_EResultInsufficientPrivilege`
using both the game and official SDK application identities on 2026-11-17.
The server still reports the v43 package (91,778,337 bytes). No online description
was changed, and a fresh public v44 download has not yet been verified.

## Behavior

Pillage changes only its occupied bridge segment and grants one reward. The model
shows the damaged segments of a one-, two- or three-tile bridge. A city production
project repairs all damaged segments of the selected bridge, preserving other bridges.
Repair projects are under Projects, identified by span and anchor coordinates.
They cost 40% of the whole bridge's base production cost, rounded up, with native
game-speed scaling. The old per-segment repair entries are hidden.

The root's existing crossing component is replaced by the corresponding model;
no extra bridge pillage target is added. An invisible city-center prerequisite
gates the repair project to the owning city. Legacy and directional districts
have distinct art bindings. All 66 asset variants and 16 external texture payloads
are included. Editable Blender files and build tools are in `art/damage/`.

## Live acceptance

Both DX11 and DX12 passed the same 132 damage/repair cases: legacy and directional
districts, six directions, and every nonempty damaged subset of 1/2/3-tile spans.
Damage setup uses native debug flags; repair is queued through the native city
BUILD operation and completed with injected production. Flags, model selection,
crossing components and project prerequisites are checked after completion.

Each renderer additionally passed actual Warrior movement and Pillage operations
on all three spans: healthy bridges crossed in both directions; all six segments
were pillaged after city transfer to Free Cities. A second pillage target was
unavailable, other segments remained intact, and the standing unit stayed
unembarked immediately after pillage. These tests restore movement/attack allowance
between cases. Gold amounts in the all-tech fixture are not balance evidence.

The three span families were visually inspected in both renderers. Damaged states
and city repair availability survived loading. A dedicated v44 DX11 save was written,
the test cities then transferred/pillaged, and that save reloaded to verify their
original owners and damage masks. Two same-type bridges have independent repair
projects, and the selected bridge's repair does not repair the other bridge.

## Portable checks and scope

Seven offline regression suites pass, including a separate 132-case damage matrix,
old-save normalization, root removal and stale completion. Localization and texture
package checks pass. The frozen manifest verifies all 93 installable files.

The temporary fixture changes terrain and grants technologies/production; it is not
a natural-turn balance test. Terrain rendering was checked after reload. Visual
inspection covers the three span families, not screenshots of every mask/direction.
This is scoped DX11/DX12 single-player coverage, not a guarantee about every AI,
naval pillager, third-party mod combination, multiplayer mode or platform.

The DX11 battle runner twice received an empty Tuner response immediately after
transferring the fixture city containing 36 bridges. The game remained responsive.
The final three-tile pillage sequence passed after reconnecting; all required
movement, transfer and pillage assertions were verified in the command ledger.
The original empty responses and resumed run are retained with the test evidence.

Timestamped commands, native results, screenshots and private saves are retained
in the development workspace under `regression/20261117/bridge-damaged-art`, with
DX11 results in its `dx11/` subdirectory. Personal saves and raw logs are not published.
