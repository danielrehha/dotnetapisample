namespace AllbertBackend.API.Helpers
{
    public static class UrlUtilities
    {
        public static string TrimHostName(this string input)
        {
            var split = "/api";
            var result = input.Substring(input.IndexOf(split) + split.Length);
            return result;
        }
    }
}
