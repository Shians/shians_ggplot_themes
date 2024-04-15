
theme_barplot <- function(bar_direction = c("vert", "horiz")) {
    bar_direction <- match.arg(bar_direction)

    if (bar_direction == "vert") {
        theme_minimal() +
            theme(
                axis.text.x = element_text(angle = 45, hjust = 1),
                panel.grid = element_blank(),
                panel.grid.major.y = element_line(colour = "grey90"),
                strip.text = element_text(size = 10, face = "bold"),
                strip.background = element_rect(fill = "grey90")
            )
    } else {
        theme_minimal() +
            theme(
                axis.text.y = element_text(angle = 0, hjust = 1),
                panel.grid = element_blank(),
                panel.grid.major.x = element_line(colour = "grey90"),
                strip.text = element_text(size = 10, face = "bold"),
                strip.background = element_rect(fill = "grey90")
            )
    }
}
