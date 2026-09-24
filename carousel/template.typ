#let theme = yaml("theme.yaml")

#let c-bg = rgb(theme.colors.bg)
#let c-text = rgb(theme.colors.text)
#let c-margin = rgb(theme.colors.margin_bar)
#let c-surface = rgb(theme.colors.surface)
#let c-primary = rgb(theme.colors.primary)
#let c-secondary = rgb(theme.colors.secondary)
#let c-muted = rgb(theme.colors.text_muted)
#let c-border = rgb(theme.colors.border)

// Category Badge
#let badge(body) = box(
  fill: c-surface,
  stroke: 1.5pt + c-primary,
  inset: (x: 20pt, y: 10pt),
  radius: 8pt,
  baseline: 0%,
  text(fill: c-primary, size: 24pt, weight: "bold", tracking: 0.08em)[#upper(body)]
)

// Content Container Card
#let card(body, title: none) = rect(
  width: 100%,
  fill: c-surface,
  stroke: (left: 8pt + c-primary, rest: 1pt + c-border),
  radius: (right: 14pt),
  inset: 38pt,
)[
  #if title != none [
    #text(fill: c-primary, size: 28pt, weight: "bold")[#title]
    #v(14pt)
  ]
  #text(fill: c-text, size: 34pt)[#body]
]

// Standout Takeaway / Formula Box (Deep wine with contrasting light text)
#let highlight-box(body) = rect(
  width: 100%,
  fill: c-secondary,
  stroke: 1.5pt + c-primary,
  radius: 14pt,
  inset: 34pt,
  align(center, text(fill: rgb("#ffffff"), size: 36pt, weight: "bold")[#body])
)

// Master Page Frame with Full-Width Margin Bands
#let carousel-deck(
  topic: theme.meta.topic,
  author: theme.meta.author,
  body
) = {
  set page(
    width: 1080pt,
    height: 1350pt,
    margin: (top: 140pt, bottom: 130pt, x: 100pt),
    fill: c-bg,
    // Draw solid margin bars spanning the entire canvas width
    background: {
      place(top + left, rect(width: 100%, height: 140pt, fill: c-margin))
      place(bottom + left, rect(width: 100%, height: 130pt, fill: c-margin))
    },
    // Top Bar Content
    header: context {
      grid(
        columns: (1fr, auto),
        align: (left + horizon, right + horizon),
        text(fill: c-muted, size: 26pt, weight: "medium", tracking: 0.05em)[#topic],
        text(fill: c-primary, size: 26pt, weight: "bold")[#author],
      )
    },
    // Bottom Bar Content
    footer: context {
      let cur = counter(page).get().first()
      let total = counter(page).final().first()
      grid(
        columns: (1fr, auto),
        align: (left + horizon, right + horizon),
        line(length: 100pt, stroke: 2pt + c-primary),
        text(fill: c-muted, size: 26pt)[#cur / #total],
      )
    }
  )

  set text(
    font: theme.typography.font,
    fill: c-text,
    size: 38pt,
  )
  set par(leading: eval(theme.typography.leading))

  body
}
