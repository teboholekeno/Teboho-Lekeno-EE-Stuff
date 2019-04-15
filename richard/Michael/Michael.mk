##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=Michael
ConfigurationName      :=Debug
WorkspacePath          :=C:/Users/teboho/Desktop/Teboho-Lekeno-EE-Stuff/richard
ProjectPath            :=C:/Users/teboho/Desktop/Teboho-Lekeno-EE-Stuff/richard/Michael
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=teboho
Date                   :=15/04/2019
CodeLitePath           :="C:/Program Files/CodeLite"
LinkerName             :=C:/mingw64/bin/g++.exe
SharedObjectLinkerName :=C:/mingw64/bin/g++.exe -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
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
RcCompilerName         :=C:/mingw64/bin/windres.exe
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
AR       := C:/mingw64/bin/ar.exe rcu
CXX      := C:/mingw64/bin/g++.exe --std=c++17
CC       := C:/mingw64/bin/gcc.exe
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := C:/mingw64/bin/as.exe


##
## User defined environment variables
##
Objects0=$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IntermediateDirectory)/Game_Board_Management.cpp$(ObjectSuffix) $(IntermediateDirectory)/Game_Control.cpp$(ObjectSuffix) $(IntermediateDirectory)/Algorithm1.cpp$(ObjectSuffix) $(IntermediateDirectory)/Current_Playing_Board.cpp$(ObjectSuffix) 



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
$(IntermediateDirectory)/main.cpp$(ObjectSuffix): main.cpp $(IntermediateDirectory)/main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Desktop/Teboho-Lekeno-EE-Stuff/richard/Michael/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/main.cpp$(DependSuffix) -MM main.cpp

$(IntermediateDirectory)/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.cpp$(PreprocessSuffix) main.cpp

$(IntermediateDirectory)/Game_Board_Management.cpp$(ObjectSuffix): Game_Board_Management.cpp $(IntermediateDirectory)/Game_Board_Management.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Desktop/Teboho-Lekeno-EE-Stuff/richard/Michael/Game_Board_Management.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Game_Board_Management.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Game_Board_Management.cpp$(DependSuffix): Game_Board_Management.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Game_Board_Management.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Game_Board_Management.cpp$(DependSuffix) -MM Game_Board_Management.cpp

$(IntermediateDirectory)/Game_Board_Management.cpp$(PreprocessSuffix): Game_Board_Management.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Game_Board_Management.cpp$(PreprocessSuffix) Game_Board_Management.cpp

$(IntermediateDirectory)/Game_Control.cpp$(ObjectSuffix): Game_Control.cpp $(IntermediateDirectory)/Game_Control.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Desktop/Teboho-Lekeno-EE-Stuff/richard/Michael/Game_Control.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Game_Control.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Game_Control.cpp$(DependSuffix): Game_Control.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Game_Control.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Game_Control.cpp$(DependSuffix) -MM Game_Control.cpp

$(IntermediateDirectory)/Game_Control.cpp$(PreprocessSuffix): Game_Control.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Game_Control.cpp$(PreprocessSuffix) Game_Control.cpp

$(IntermediateDirectory)/Algorithm1.cpp$(ObjectSuffix): Algorithm1.cpp $(IntermediateDirectory)/Algorithm1.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Desktop/Teboho-Lekeno-EE-Stuff/richard/Michael/Algorithm1.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Algorithm1.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Algorithm1.cpp$(DependSuffix): Algorithm1.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Algorithm1.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Algorithm1.cpp$(DependSuffix) -MM Algorithm1.cpp

$(IntermediateDirectory)/Algorithm1.cpp$(PreprocessSuffix): Algorithm1.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Algorithm1.cpp$(PreprocessSuffix) Algorithm1.cpp

$(IntermediateDirectory)/Current_Playing_Board.cpp$(ObjectSuffix): Current_Playing_Board.cpp $(IntermediateDirectory)/Current_Playing_Board.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Desktop/Teboho-Lekeno-EE-Stuff/richard/Michael/Current_Playing_Board.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Current_Playing_Board.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Current_Playing_Board.cpp$(DependSuffix): Current_Playing_Board.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Current_Playing_Board.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Current_Playing_Board.cpp$(DependSuffix) -MM Current_Playing_Board.cpp

$(IntermediateDirectory)/Current_Playing_Board.cpp$(PreprocessSuffix): Current_Playing_Board.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Current_Playing_Board.cpp$(PreprocessSuffix) Current_Playing_Board.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


