// This is basically Vibrancy, reversed and made compatible with A12
// No Source-Code was provided at the time of making this
// reconstructed thanks to IDA-Pro.

%hook LockScreenView

-(void)setDateViewIsVibrant:(BOOL)arg1 {
    %orig(YES);
}

%end

%ctor {
    // Added iOS 13 support by Tr1Fecta-7
    
    // Check if CSCoverSheetView exists, if so use CSCoverSheetView's class to hook, else use SBDashBoardView
    Class lockScreenViewClass = %c(CSCoverSheetView) ?: %c(SBDashBoardView);
    %init(_ungrouped, LockScreenView=lockScreenViewClass);
}