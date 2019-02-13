/* vte.vapi generated by vapigen, do not modify. */

namespace Vte {
	[CCode (cheader_filename = "vte/vte.h")]
	[Compact]
	public class CharAttributes {
		public Gdk.Color back;
		public long column;
		public Gdk.Color fore;
		public long row;
		public uint strikethrough;
		public uint underline;
	}
	[CCode (cheader_filename = "vte/vte.h")]
	public class Pty : GLib.Object, GLib.Initable {
		[CCode (has_construct_function = false)]
		public Pty (Vte.PtyFlags flags) throws GLib.Error;
		public void child_setup ();
		public void close ();
		public static GLib.Quark error_quark ();
		[CCode (has_construct_function = false)]
		public Pty.foreign (int fd) throws GLib.Error;
		public int get_fd ();
		public bool get_size (int rows, int columns) throws GLib.Error;
		public bool set_size (int rows, int columns) throws GLib.Error;
		public void set_term (string emulation);
		public bool set_utf8 (bool utf8) throws GLib.Error;
		public int fd { get; construct; }
		[NoAccessorMethod]
		public Vte.PtyFlags flags { get; construct; }
		[NoAccessorMethod]
		public string term { owned get; set; }
	}
	[CCode (cheader_filename = "vte/vte.h")]
	[Compact]
	public class PtyClass {
	}
	[CCode (cheader_filename = "vte/reaper.h")]
	public class Reaper : GLib.Object {
		[CCode (has_construct_function = false)]
		protected Reaper ();
		public static int add_child (GLib.Pid pid);
		public static unowned Vte.Reaper @get ();
		public virtual signal void child_exited (int p0, int p1);
	}
	[CCode (cheader_filename = "vte/vte.h")]
	public class Terminal : Gtk.Widget, Atk.Implementor, Gtk.Buildable {
		public weak Gtk.Adjustment adjustment;
		public long char_ascent;
		public long char_descent;
		public long char_height;
		public long char_width;
		public long column_count;
		public long row_count;
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public Terminal ();
		public void copy_primary ();
		public void feed (string data, long length);
		public void feed_child (string text, long length);
		public void feed_child_binary (string data, long length);
		public int fork_command (string? command, [CCode (array_length = false)] string[]? argv, [CCode (array_length = false)] string[]? envv, string? working_directory, bool lastlog, bool utmp, bool wtmp);
		public bool fork_command_full (Vte.PtyFlags pty_flags, string? working_directory, [CCode (array_length = false)] string[] argv, [CCode (array_length = false)] string[]? envv, GLib.SpawnFlags spawn_flags, GLib.SpawnChildSetupFunc? child_setup, out GLib.Pid child_pid) throws GLib.Error;
		public int forkpty (string[] envv, string working_directory, bool lastlog, bool utmp, bool wtmp);
		public unowned Gtk.Adjustment get_adjustment ();
		public bool get_allow_bold ();
		public bool get_audible_bell ();
		public long get_char_ascent ();
		public long get_char_descent ();
		public long get_char_height ();
		public long get_char_width ();
		public int get_child_exit_status ();
		public long get_column_count ();
		public Vte.TerminalCursorBlinkMode get_cursor_blink_mode ();
		public void get_cursor_position (out long column, out long row);
		public Vte.TerminalCursorShape get_cursor_shape ();
		public unowned string get_default_emulation ();
		public unowned string get_emulation ();
		public unowned string get_encoding ();
		public unowned Pango.FontDescription get_font ();
		public bool get_has_selection ();
		public unowned string get_icon_title ();
		public bool get_mouse_autohide ();
		public void get_padding (int xpad, int ypad);
		public int get_pty ();
		public unowned Vte.Pty get_pty_object ();
		public long get_row_count ();
		public unowned string get_status_line ();
		public unowned string get_text (Vte.SelectionFunc is_selected, GLib.Array attributes);
		public unowned string get_text_include_trailing_spaces (Vte.SelectionFunc is_selected, GLib.Array attributes);
		public unowned string get_text_range (long start_row, long start_col, long end_row, long end_col, Vte.SelectionFunc is_selected, GLib.Array attributes);
		public bool get_using_xft ();
		public bool get_visible_bell ();
		public unowned string get_window_title ();
		public void im_append_menuitems (Gtk.MenuShell menushell);
		public bool is_word_char (unichar c);
		public int match_add (string match);
		public int match_add_gregex (GLib.Regex regex, GLib.RegexMatchFlags flags);
		public string? match_check (long column, long row, out int tag);
		public void match_clear_all ();
		public void match_remove (int tag);
		public void match_set_cursor (int tag, Gdk.Cursor cursor);
		public void match_set_cursor_name (int tag, string cursor_name);
		public void match_set_cursor_type (int tag, Gdk.CursorType cursor_type);
		public void paste_primary ();
		public Vte.Pty pty_new (Vte.PtyFlags flags) throws GLib.Error;
		public void reset (bool clear_tabstops, bool clear_history);
		public bool search_find_next ();
		public bool search_find_previous ();
		public unowned GLib.Regex search_get_gregex ();
		public bool search_get_wrap_around ();
		public void search_set_gregex (GLib.Regex regex);
		public void search_set_wrap_around (bool wrap_around);
		public void select_all ();
		public void select_none ();
		public void set_allow_bold (bool allow_bold);
		public void set_audible_bell (bool is_audible);
		public void set_background_image (Gdk.Pixbuf image);
		public void set_background_image_file (string path);
		public void set_background_saturation (double saturation);
		public void set_background_tint_color (Gdk.Color color);
		public void set_background_transparent (bool transparent);
		public void set_backspace_binding (Vte.TerminalEraseBinding binding);
		public void set_color_background (Gdk.Color background);
		public void set_color_bold (Gdk.Color bold);
		public void set_color_cursor (Gdk.Color cursor_background);
		public void set_color_dim (Gdk.Color dim);
		public void set_color_foreground (Gdk.Color foreground);
		public void set_color_highlight (Gdk.Color highlight_background);
		public void set_colors (Gdk.Color foreground, Gdk.Color background, Gdk.Color[] palette);
		public void set_cursor_blink_mode (Vte.TerminalCursorBlinkMode mode);
		public void set_cursor_blinks (bool blink);
		public void set_cursor_shape (Vte.TerminalCursorShape shape);
		public void set_default_colors ();
		public void set_delete_binding (Vte.TerminalEraseBinding binding);
		public void set_emulation (string emulation);
		public void set_encoding (string codeset);
		public void set_font (Pango.FontDescription font_desc);
		public void set_font_from_string (string name);
		public void set_font_from_string_full (string name, Vte.TerminalAntiAlias antialias);
		public void set_font_full (Pango.FontDescription font_desc, Vte.TerminalAntiAlias antialias);
		public void set_mouse_autohide (bool setting);
		public void set_opacity (uint16 opacity);
		public void set_pty (int pty_master);
		public void set_pty_object (Vte.Pty pty);
		public void set_scroll_background (bool scroll);
		public void set_scroll_on_keystroke (bool scroll);
		public void set_scroll_on_output (bool scroll);
		public void set_scrollback_lines (long lines);
		public void set_size (long columns, long rows);
		public void set_visible_bell (bool is_visible);
		public void set_word_chars (string spec);
		[NoWrapper]
		public virtual void vte_reserved3 ();
		[NoWrapper]
		public virtual void vte_reserved4 ();
		public void watch_child (GLib.Pid child_pid);
		public bool write_contents (GLib.OutputStream stream, Vte.TerminalWriteFlags flags, GLib.Cancellable cancellable) throws GLib.Error;
		public bool allow_bold { get; set; }
		public bool audible_bell { get; set; }
		[NoAccessorMethod]
		public string background_image_file { owned get; set; }
		[NoAccessorMethod]
		public Gdk.Pixbuf background_image_pixbuf { owned get; set; }
		[NoAccessorMethod]
		public double background_opacity { get; set; }
		[NoAccessorMethod]
		public double background_saturation { get; set; }
		[NoAccessorMethod]
		public Gdk.Color background_tint_color { get; set; }
		[NoAccessorMethod]
		public bool background_transparent { get; set; }
		[NoAccessorMethod]
		public Vte.TerminalEraseBinding backspace_binding { get; set; }
		public Vte.TerminalCursorBlinkMode cursor_blink_mode { get; set; }
		public Vte.TerminalCursorShape cursor_shape { get; set; }
		[NoAccessorMethod]
		public Vte.TerminalEraseBinding delete_binding { get; set; }
		public string emulation { get; set; }
		public string encoding { get; set; }
		[NoAccessorMethod]
		public Pango.FontDescription font_desc { owned get; set; }
		public string icon_title { get; }
		[NoAccessorMethod]
		public bool pointer_autohide { get; set; }
		public int pty { get; set; }
		public Vte.Pty pty_object { get; set; }
		[NoAccessorMethod]
		public bool scroll_background { get; set; }
		[NoAccessorMethod]
		public bool scroll_on_keystroke { get; set; }
		[NoAccessorMethod]
		public bool scroll_on_output { get; set; }
		[NoAccessorMethod]
		public uint scrollback_lines { get; set; }
		public bool visible_bell { get; set; }
		public string window_title { get; }
		[NoAccessorMethod]
		public string word_chars { owned get; set; }
		public virtual signal void beep ();
		public virtual signal void char_size_changed (uint char_width, uint char_height);
		public virtual signal void child_exited ();
		public virtual signal void commit (string text, uint size);
		public virtual signal void contents_changed ();
		[HasEmitter]
		public virtual signal void copy_clipboard ();
		public virtual signal void cursor_moved ();
		public virtual signal void decrease_font_size ();
		public virtual signal void deiconify_window ();
		public virtual signal void emulation_changed ();
		public virtual signal void encoding_changed ();
		public virtual signal void eof ();
		public virtual signal void icon_title_changed ();
		public virtual signal void iconify_window ();
		public virtual signal void increase_font_size ();
		public virtual signal void lower_window ();
		public virtual signal void maximize_window ();
		public virtual signal void move_window (uint x, uint y);
		[HasEmitter]
		public virtual signal void paste_clipboard ();
		public virtual signal void raise_window ();
		public virtual signal void refresh_window ();
		public virtual signal void resize_window (uint width, uint height);
		public virtual signal void restore_window ();
		public virtual signal void selection_changed ();
		public virtual signal void set_scroll_adjustments (Gtk.Adjustment hadjustment, Gtk.Adjustment vadjustment);
		public virtual signal void status_line_changed ();
		public virtual signal void text_deleted ();
		public virtual signal void text_inserted ();
		public virtual signal void text_modified ();
		public virtual signal void text_scrolled (int delta);
		public virtual signal void window_title_changed ();
	}
	[CCode (cheader_filename = "vte/vteaccess.h")]
	public class TerminalAccessible : Gtk.Accessible, Atk.Text, Atk.Component, Atk.Action {
		[CCode (has_construct_function = false, type = "AtkObject*")]
		public TerminalAccessible (Vte.Terminal terminal);
	}
	[CCode (cheader_filename = "vte/vte.h")]
	public class TerminalAccessibleFactory : Atk.ObjectFactory {
		[CCode (has_construct_function = false, type = "AtkObjectFactory*")]
		public TerminalAccessibleFactory ();
	}
	[CCode (cheader_filename = "vte/vte.h", cprefix = "VTE_PTY_ERROR_")]
	public enum PtyError {
		PTY_HELPER_FAILED,
		PTY98_FAILED
	}
	[CCode (cheader_filename = "vte/vte.h", cprefix = "VTE_PTY_")]
	[Flags]
	public enum PtyFlags {
		NO_LASTLOG,
		NO_UTMP,
		NO_WTMP,
		NO_HELPER,
		NO_FALLBACK,
		DEFAULT
	}
	[CCode (cheader_filename = "vte/vte.h", cprefix = "VTE_ANTI_ALIAS_")]
	public enum TerminalAntiAlias {
		USE_DEFAULT,
		FORCE_ENABLE,
		FORCE_DISABLE
	}
	[CCode (cheader_filename = "vte/vte.h", cprefix = "VTE_CURSOR_BLINK_")]
	public enum TerminalCursorBlinkMode {
		SYSTEM,
		ON,
		OFF
	}
	[CCode (cheader_filename = "vte/vte.h", cprefix = "VTE_CURSOR_SHAPE_")]
	public enum TerminalCursorShape {
		BLOCK,
		IBEAM,
		UNDERLINE
	}
	[CCode (cheader_filename = "vte/vte.h", cprefix = "VTE_ERASE_")]
	public enum TerminalEraseBinding {
		AUTO,
		ASCII_BACKSPACE,
		ASCII_DELETE,
		DELETE_SEQUENCE,
		TTY
	}
	[CCode (cheader_filename = "vte/vte.h", cprefix = "VTE_TERMINAL_WRITE_")]
	public enum TerminalWriteFlags {
		DEFAULT
	}
	[CCode (cheader_filename = "vte/vte.h")]
	public delegate bool SelectionFunc (Vte.Terminal terminal, long column, long row);
	[CCode (cheader_filename = "vte/vte.h")]
	public const int MAJOR_VERSION;
	[CCode (cheader_filename = "vte/vte.h")]
	public const int MICRO_VERSION;
	[CCode (cheader_filename = "vte/vte.h")]
	public const int MINOR_VERSION;
	[CCode (cheader_filename = "vte/vte.h")]
	public static unowned string get_user_shell ();
}
