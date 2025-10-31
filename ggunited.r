library(ggplot2)

# Color palette from the Bootswatch 'United' theme
united_colors <- c(
  primary = "#772953",      # Primary/navbar color
  secondary = "#E95420",    # Ubuntu orange
  success = "#38B44A",      # Bootstrap success (green)
  info = "#17A2B8",         # Bootstrap info (cyan)
  warning = "#DF8A13",      # Bootstrap warning (orange/gold)
  danger = "#D9230F",       # Bootstrap danger (red)
  light = "#EEEEEE",           # Light gray
  dark = "#333333",         # Dark gray
  white = "#FFFFFF",        # White
  gray_100 = "#F8F9FA",     # Very light gray
  gray_200 = "#E9ECEF",     # Light gray
  gray_300 = "#DEE2E6",     # Gray
  gray_600 = "#6C757D",     # Medium gray
  gray_800 = "#343A40",     # Dark gray
  body_bg = "#FFFFFF",      # Page background
  body_color = "#333333",   # Body text
  link_color = "#772953"    # Links match primary
)

united_discrete <- c(
  united_colors["primary"],
  united_colors["secondary"],
  united_colors["success"],
  united_colors["info"],
  united_colors["warning"],
  united_colors["danger"],
  united_colors["gray_600"]
)

scale_color_united <- function(...) {
  scale_color_manual(values = united_discrete, ...)
}

scale_fill_united <- function(...) {
  scale_fill_manual(values = united_discrete, ...)
}

scale_color_united_c <- function(...) {
  scale_color_gradient(
    low = united_colors["light"],
    high = united_colors["primary"],
    ...
  )
}

scale_fill_united_c <- function(...) {
  scale_fill_gradient(
    low = united_colors["light"],
    high = united_colors["primary"],
    ...
  )
}

theme_united <- function(base_size = 12, base_family = "Ubuntu") {
  theme_classic(base_size = base_size, base_family = base_family) +
    theme(

      plot.background = element_rect(fill = united_colors["body_bg"], color = NA),
      panel.background = element_rect(fill = united_colors["body_bg"], color = NA),
      

      # panel.grid.major = element_line(color = united_colors["gray_200"], linewidth = 0.4),
      # panel.grid.minor = element_line(color = united_colors["gray_100"], linewidth = 0.2),
      
      axis.line = element_line(color = united_colors["gray_600"], linewidth = 0.5),
      axis.ticks = element_line(color = united_colors["gray_600"], linewidth = 0.4),
      axis.text = element_text(color = united_colors["body_color"], size = rel(0.9)),
      axis.title = element_text(color = united_colors["body_color"], 
                                size = rel(1), face = "bold"),

      plot.title = element_text(
        color = united_colors["primary"], 
        size = rel(1.4), 
        face = "bold", 
        hjust = 0, 
        margin = margin(b = 10)
      ),
      plot.subtitle = element_text(
        color = united_colors["gray_600"], 
        size = rel(1.05), 
        hjust = 0,
        margin = margin(b = 10)
      ),
      plot.caption = element_text(
        color = united_colors["gray_600"], 
        size = rel(0.85), 
        hjust = 1,
        margin = margin(t = 10)
      ),
      
      legend.background = element_rect(fill = united_colors["body_bg"], color = NA),
      legend.key = element_rect(fill = united_colors["body_bg"], color = NA),
      legend.text = element_text(color = united_colors["body_color"], size = rel(0.9)),
      legend.title = element_text(color = united_colors["body_color"], 
                                  size = rel(1), face = "bold"),
      legend.position = "bottom",
      
      strip.background = element_rect(fill = united_colors["primary"], color = NA),
      strip.text = element_text(
        color = "white", 
        size = rel(1), 
        face = "bold",
        margin = margin(5, 5, 5, 5)
      ),
      
      panel.spacing = unit(1.5, "lines"),
      
      plot.margin = margin(15, 15, 15, 15)
    )
}

theme_set(theme_united())