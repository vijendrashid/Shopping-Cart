<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup
        Application["PageRequestCount"] = 0;
    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started
        Application["PageRequestCount"] = (int)Application["PageRequestCount"] + 1;
    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }

    //public void Profile_OnMigrateAnonymous(object sender, ProfileMigrateEventArgs args)
    //{
    //    // Get anonymous Profile
    //    ProfileCommon anonProfile = Profile.GetProfile(args.AnonymousID);

    //    // Copy anonymous properties to authenticated
    //    //Profile.ShoppingCart = anonProfile.ShoppingCart;        
    //    foreach ( prop in ProfileBase.Properties)
    //        Profile[
        
    //    // Kill the anonymous profile
    //    ProfileManager.DeleteProfile(args.AnonymousID);
    //    AnonymousIdentificationModule.ClearAnonymousIdentifier();
            
    //}
       
</script>
