// This is basically Vibrancy, reversed and made compatible with A12
// No Source-Code was provided at the time of making this
// reconstructed thanks to IDA-Pro.

%hook SBDashBoardView

-(void)setDateViewIsVibrant:(BOOL)arg1 {
    %orig(YES);
}

%end

// Added iOS 13 support by Tr1Fecta-7

%hook CSCoverSheetView

-(void)setDateViewIsVibrant:(BOOL)arg1 {
    %orig(YES);
}

%end