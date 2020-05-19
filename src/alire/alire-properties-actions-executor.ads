with Alire.Properties;
with Alire.Releases;
with Alire.Utils;

package Alire.Properties.Actions.Executor is

   procedure Execute_Actions (Release : Releases.Release;
                              Env     : Properties.Vector;
                              Moment  : Moments);
   --  Run Release actions that apply to a given environment. IMPORTANT: the
   --  working directory at the moment of this call should be the release root.

   procedure Execute_Actions
     (Release    : Releases.Release;
      Env        : Properties.Vector;
      Moment     : Moments;
      Capture    : Boolean;
      Err_To_Out : Boolean;
      Code       : out Integer;
      Output     : out Utils.String_Vector;
      Prefix     : Utils.String_Vector := Utils.Empty_Vector);
   --  More general invocation. Prefix is prepended to the command (e.g., for
   --  dockerization). When capture is true, the rest of parameters are also
   --  used; otherwise output goes untouched straight to console.

end Alire.Properties.Actions.Executor;
