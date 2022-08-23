
static int topbar = 1;
static int min_width = 500;


static int centered = 0;
static unsigned int lines = 0;
static const unsigned int border_width = 0;
static const char *prompt = "" ;
static const char *fonts[] = { "FiraCode Light:size=13:antialias=true:autohint=true" };
static const unsigned int alpha = 0xFF;


/* static int centered = 1; */
/* static unsigned int lines = 10; */
/* static const unsigned int border_width = 2; */
/* static const char *prompt = "Select :" ; */
/* static const char *fonts[] = { "JetBrains Mono Extra Light:size=10:antialias=true:autohint=true" }; */
/* static const unsigned int alpha = 0xe0; */


static const char worddelimiters[] = "";
/* Tokyonight  Nature     Gold */
/* "#dd7186", "#566349", "#444444"; */
/* "#1d1f21", "#222222", "#222222"; */
/* "#222222", "#222222", "#222222"; */
/* "#a48add", "#67c394", "#ffbe3c"; */

static const char *colors[SchemeLast][2] = {
							    /* fg         bg */
	[SchemeNorm]	=	{	"#566349" ,		"#222222" },
	[SchemeSel]		=	{	"#222222" , "#67c394"  	},
	[SchemeOut]		=	{	"#000000",	"#00ffff"	},
};

static const unsigned int alphas[SchemeLast][2] = {
  [SchemeNorm] = { OPAQUE, alpha },
  [SchemeSel] = { OPAQUE, alpha },
  [SchemeOut] = { OPAQUE, alpha },
};

