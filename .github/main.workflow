action "Export SVG from Figma" {
  uses = "primer/figma-action@1.0.0"
  secrets = [
    "FIGMA_TOKEN",
  ]
  env = {
    "FIGMA_FILE_URL" = "https://www.figma.com/file/MR8GphgrANE8HNNiYM6ROXg6/Untitled"
  }
  args = [
    "format=svg",
    "outputDir=./exported-images",
  ]
}

workflow "New workflow" {
  on = "push"
}
