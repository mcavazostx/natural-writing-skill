# Frontend and UI/UX Standards

Use for websites, landing pages, blogs, dashboards, admin interfaces, components, and responsive frontend implementation.

## 1. Hierarchy before components
Design the page as a composition first. Establish:
- Page focal point
- Section sequence
- Primary CTA
- Secondary actions
- Content density
- Visual rhythm

Do not start by assembling generic cards.

## 2. Responsive layout
- Design mobile-first, then expand deliberately.
- Prevent horizontal scrolling.
- Use fluid grids and containers rather than fixed desktop widths.
- Preserve readable line length on large screens.
- Account for fixed headers/bottom bars so content is not obscured.
- Use dynamic viewport units where appropriate on mobile.
- Test meaningful breakpoints rather than arbitrary device names.

## 3. Accessibility baseline
- Normal text contrast should meet WCAG AA expectations.
- Keep visible keyboard focus states.
- Provide alt text for meaningful images.
- Use semantic headings in order.
- Give icon-only controls accessible names.
- Do not use color as the sole carrier of meaning.
- Respect reduced-motion preferences.
- Form fields need persistent labels, not placeholder-only labeling.
- Interactive targets should be comfortably tappable on touch devices.

## 4. Typography
- Body text is normally at least 16px on mobile.
- Use a deliberate type scale rather than random sizes.
- Maintain comfortable body line height.
- Limit line length for long-form reading.
- Use tabular figures for prices, dashboards, and aligned numerical data when appropriate.

## 5. Color system
Prefer semantic tokens:
- background
- surface
- text-primary
- text-secondary
- border
- accent
- accent-contrast
- success
- warning
- error
- focus

Components should consume tokens, not arbitrary hard-coded colors.

## 6. Interaction
- Primary actions should have clear default, hover, pressed, focus, disabled, loading, success, and error behavior as relevant.
- Never rely on hover for essential functionality.
- Show immediate feedback after user input.
- Error messages should explain what happened and how to recover.
- Avoid destructive actions without confirmation or undo where practical.

## 7. Motion
- Motion should explain cause/effect or hierarchy.
- Prefer opacity and transform animations for performance.
- Keep micro-interactions brief and interruptible.
- Avoid animating everything.
- One well-orchestrated reveal can be stronger than many unrelated effects.

## 8. Navigation
- Make the current location obvious.
- Preserve scroll/filter/input state on back navigation when possible.
- Keep primary navigation predictable.
- Avoid stacking multiple navigation systems at the same hierarchy level.
- Deep pages should retain a clear route back or to core navigation.

## 9. Performance
- Optimize and responsively size images.
- Reserve image/media dimensions to avoid layout shift.
- Lazy-load noncritical media/components.
- Keep initial bundles lean.
- Prefer SVG/vector icons.
- Avoid layout-thrashing animation.
- Use skeleton/progress feedback for noticeable waits.

## 10. Visual quality
Avoid:
- Bootstrap/default component appearance
- White-card-on-gray-page repetition without hierarchy
- Excessive borders around every element
- Random radii/shadows
- Too many equal-strength CTAs
- Decorative dashboards with meaningless charts
- Visual complexity that does not improve task completion

## 11. Web editorial mode
For blogs/content sites:
- Make headlines and imagery drive the experience.
- Keep article typography highly readable.
- Use restrained metadata.
- Related-content modules should not overpower the current article.
- Avoid generic AI illustrations unless they are the intentional editorial art direction.
- Prefer authentic local/property photography for real-estate content.
