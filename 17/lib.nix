rec {
    makeOverrideable = f: origArgs:
        let
            origRes = f origArgs;
        in
            origRes // { override = newArgs: makeOverrideable f (origArgs // newArgs); };
}
