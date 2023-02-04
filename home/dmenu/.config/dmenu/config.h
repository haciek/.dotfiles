
static int topbar = 1;
static int min_width = 500;


static int centered = 1;
static unsigned int lines = 10;
static const unsigned int border_width = 1;
static const char *prompt = "Launch: " ;
static const char *fonts[] = { "FiraCode Light:size=13:antialias=true:autohint=true" };
static const unsigned int alpha = 0xFF;


/* static int centered = 1; */
/* static unsigned int lines = 10; */
/* static const unsigned int border_width = 2; */
/* static const char *prompt = "Select :" ; */
/* static const char *fonts[] = { "JetBrains Mono Extra Light:size=10:antialias=true:autohint=true" }; */
/* static const unsigned int alpha = 0xe0; */



static const char worddelimiters[] = "";

static const char *colors[SchemeLast][2] = {
  /* theme         fg         bg        */

  /* Gold                               */
  [SchemeNorm] = { "#444444", "#222222" },
  [SchemeSel]  = { "#1a1b26", "#ffbe3c" },

  /* Tokyonight                         */
  /* [SchemeNorm] = { "#dd7186", "#1d1f21" }, */
  /* [SchemeSel]  = { "#1a1b26", "#a48add" }, */

  /* Nature                             */
  /* [SchemeNorm] = { "#566349", "#222222" }, */
  /* [SchemeSel]  = { "#1a1b26", "#67c394" }, */

  [SchemeOut]  = { "#000000", "#00ffff" },
};

static const unsigned int alphas[SchemeLast][2] = {
  [SchemeNorm] = { OPAQUE, alpha },
  [SchemeSel] = { OPAQUE, alpha },
  [SchemeOut] = { OPAQUE, alpha },
};

