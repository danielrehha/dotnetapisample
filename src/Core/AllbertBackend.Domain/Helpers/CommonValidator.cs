namespace AllbertBackend.Domain.Helpers
{
    public static class CommonValidator
    {
        public static bool IsEntityStatusValid(string value)
        {
            if (value == "active" || value == "paused")
            {
                return true;
            }

            return false;
        }
    }
}