---
name: front-end-design
description: Design and build distinctive, production-grade web UI that does not look AI-generated. Use for any page, landing page, dashboard, component or redesign, and when the user asks to make a UI better, bolder, quieter or less generic. Not for backend-only work.
---

# Goal
UI with a clear point of view, chosen for THIS product and its users. A default look is a failure, not a safe choice.

# Steps
1. Context first. Read `docs/design.md` and existing tokens or components if present. If missing, ask 2-3 questions: who uses it, where and under what light, what they must do or understand. Then write one sentence of physical scene; it decides light or dark.
2. Pick the mode, it sets the ambition:
   - Persuade (landing, pricing): bold and committed, one memorable idea.
   - Operate (app, dashboard, settings): clarity, density, consistency. Brand lives in the details.
   - Read (docs, articles): measure, structure, calm.
   - Experience (portfolio, gallery): the work leads, the UI recedes.
3. Choose a world, not a theme. List 5 concrete things the audience knows by heart (artifacts, places, publications, rituals), spanning at least 3 material families. Drop the page this category always ships AND its predictable opposite. Pick one ("a transit map", not "clean and minimal"). If the look could be guessed from the category, pick again.
4. Commit the system before code, recorded in `docs/design.md` (thesis, world, palette, type, first viewport):
   - Color: strategy first: restrained (tinted neutrals + 1 accent), committed (one color owns 30-60% of the surface), full palette (3-4 named roles) or drenched. Color owns whole regions, not scattered accents. OKLCH for new palettes.
   - Type: faces chosen like objects from the world. Fewest families that make hierarchy obvious, body at least 16px, 65-75ch measure, display at most 6rem, tracking no tighter than -0.04em, `text-wrap: balance` on headings and `pretty` on body. Load only used weights.
   - Space: 4-based scale, tight inside groups, generous between them, more space above a heading than below.
   - Depth: one elevation method (border OR shadow). Shadows have offset and soft blur, never a glow halo.
   - Motion: one authored moment, ease-out (`cubic-bezier(0.16, 1, 0.3, 1)`), 150-300ms for state changes, a `prefers-reduced-motion` path.
5. Build with full commitment. The first viewport is the thesis: someone leaving after one screen can describe it an hour later. Restyle every atom (buttons, inputs, links, nav) in the world's vocabulary. Show the product working with real, specific content; no lorem ipsum, no invented claims.
6. Look, at most twice. Render mobile (390px) and desktop (1440px), every theme and state. Batch all fixes from one look before the next. If available, run `npx impeccable detect <dir>` and fix what it flags.

# Refuse by default (the brief can override, habit cannot)
- Reflex display fonts: Inter, DM Sans, Space Grotesk, Plus Jakarta Sans, Outfit, Instrument Sans, IBM Plex, Fraunces, Playfair Display, Cormorant, Lora, Syne. Using one needs a reason no other face satisfies. Workhorse UI fonts are fine for Operate and Read body text.
- Reflex looks: purple-to-blue gradients; cream + italic serif + terracotta; near-black + one neon glow; editorial hairlines + tracked mono labels.
- Gradient text, decorative glassmorphism, thick colored `border-left` on cards, hard offset shadows outside a real neobrutalist world, grid or stripe backgrounds with nothing measured on them.
- Identical icon + heading + text cards as the page structure, nested cards, the hero-metric template (big number, small label).
- An eyebrow label above headings, 01/02/03 section numbers that carry no information.
- Gray text on colored backgrounds (tint it from the surface hue instead).
- Emoji or unicode as icons (one icon library, one stroke weight), monospace as a "tech" costume, sketchy SVG "illustrations".
- Bounce or elastic easing, the same fade-up on every section.

# Quality floor (check on the render, not in your head)
- Contrast: body text at least 4.5:1, large text and controls at least 3:1, color never the only signal.
- States: hover, focus-visible, active, disabled, loading, empty, error.
- Browser defaults themed: text selection, focus ring, scrollbar, caret, link underline offset, tabular numerals in data.
- Copy: buttons name their action, errors say what happened and how to fix it.
- Stress: real content length, long words, 320px width, 200% zoom.

# Rules
- The brief wins: pinned fonts, colors or era beat everything above.
- Refining keeps the existing identity. Redesigning replaces it fully. Never half-polish a look you were asked to replace.
- Before finishing, name the most likely way this design fails (dark mode contrast, long translations, slow font loading) and verify it.

# Output
Working code, an updated `docs/design.md`, and a 3-line rationale: mode, world, and why these colors and fonts.

Ideas adapted from [pbakaus/impeccable](https://github.com/pbakaus/impeccable) (Apache 2.0).
