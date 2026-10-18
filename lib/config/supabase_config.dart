/// Public runtime configuration for the FIMSS Flutter client.
///
/// Supply these values at build time with:
/// --dart-define=SUPABASE_URL=https://<project-ref>.supabase.co
/// --dart-define=SUPABASE_PUBLISHABLE_KEY=sb_publishable_...
///
/// Never put a Supabase secret/service_role key in a Flutter application.
const String supabaseUrl = String.fromEnvironment('SUPABASE_URL');
const String supabasePublishableKey =
    String.fromEnvironment('SUPABASE_PUBLISHABLE_KEY');

bool get isSupabaseConfigured =>
    supabaseUrl.startsWith('https://') && supabasePublishableKey.isNotEmpty;
