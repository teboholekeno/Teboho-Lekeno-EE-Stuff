##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=Michael
ConfigurationName      :=Debug
WorkspacePath          :=C:/Users/lekenot/Desktop/Teboho-Lekeno-EE-Stuff/richard
ProjectPath            :=C:/Users/lekenot/Desktop/Teboho-Lekeno-EE-Stuff/richard/Michael
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=lekenot
Date                   :=15/04/2019
CodeLitePath           :="C:/Program Files/CodeLite"
LinkerName             :=clang++
SharedObjectLinkerName :=clang++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=
PreprocessSuffix       :=.o.i
DebugSwitch            :=-gstab
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E 
ObjectsFileList        :="Michael.txt"
PCHCompileFlags        :=
MakeDirCommand         :=makedir
RcCmpOptions           := 
RcCompilerName         :=windres
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := ar rcus
CXX      := clang++
CC       := clang
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := llvm-as


##
## User defined environment variables
##
CodeLiteDir:=C:\Program Files\CodeLite
Objects0=$(IntermediateDirectory)/Algorithm1.cpp$(ObjectSuffix) $(IntermediateDirectory)/Current_Playing_Board.cpp$(ObjectSuffix) $(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IntermediateDirectory)/Game_Board_Management.cpp$(ObjectSuffix) $(IntermediateDirectory)/Game_Control.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@$(MakeDirCommand) "./Debug"


$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "./Debug"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/Algorithm1.cpp$(ObjectSuffix): Algorithm1.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/lekenot/Desktop/Teboho-Lekeno-EE-Stuff/richard/Michael/Algorithm1.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Algorithm1.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Algorithm1.cpp$(PreprocessSuffix): Algorithm1.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Algorithm1.cpp$(PreprocessSuffix) Algorithm1.cpp

$(IntermediateDirectory)/Current_Playing_Board.cpp$(ObjectSuffix): Current_Playing_Board.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/lekenot/Desktop/Teboho-Lekeno-EE-Stuff/richard/Michael/Current_Playing_Board.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Current_Playing_Board.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Current_Playing_Board.cpp$(PreprocessSuffix): Current_Playing_Board.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Current_Playing_Board.cpp$(PreprocessSuffix) Current_Playing_Board.cpp

$(IntermediateDirectory)/main.cpp$(ObjectSuffix): main.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/lekenot/Desktop/Teboho-Lekeno-EE-Stuff/richard/Michael/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.cpp$(PreprocessSuffix) main.cpp

$(IntermediateDirectory)/Game_Board_Management.cpp$(ObjectSuffix): Game_Board_Management.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/lekenot/Desktop/Teboho-Lekeno-EE-Stuff/richard/Michael/Game_Board_Management.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Game_Board_Management.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Game_Board_Management.cpp$(PreprocessSuffix): Game_Board_Management.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Game_Board_Management.cpp$(PreprocessSuffix) Game_Board_Management.cpp

$(IntermediateDirectory)/Game_Control.cpp$(ObjectSuffix): Game_Control.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/lekenot/Desktop/Teboho-Lekeno-EE-Stuff/richard/Michael/Game_Control.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Game_Control.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Game_Control.cpp$(PreprocessSuffix): Game_Control.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Game_Control.cpp$(PreprocessSuffix) Game_Control.cpp

##
## Clean
##
clean:
	$(RM) -r ./Debug/


