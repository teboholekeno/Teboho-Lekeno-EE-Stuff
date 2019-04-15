##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=teboho
ConfigurationName      :=Debug
WorkspacePath          :=C:/Users/lekenot/Desktop/Teboho-Lekeno-EE-Stuff/richard
ProjectPath            :=C:/Users/lekenot/Desktop/Teboho-Lekeno-EE-Stuff/richard/loanShark
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
Preprocessors          :=$(PreprocessorSwitch)SFML_STATIC 
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E 
ObjectsFileList        :="teboho.txt"
PCHCompileFlags        :=
MakeDirCommand         :=makedir
RcCmpOptions           := 
RcCompilerName         :=windres
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch)C:\doctest-1.2.9\doctest $(IncludeSwitch)C:\SFML-2.5.0\include 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)sfml-graphics $(LibrarySwitch)sfml-window $(LibrarySwitch)sfml-audio $(LibrarySwitch)sfml-network $(LibrarySwitch)sfml-system 
ArLibs                 :=  "sfml-graphics" "sfml-window" "sfml-audio" "sfml-network" "sfml-system" 
LibPath                := $(LibraryPathSwitch). $(LibraryPathSwitch)C:\SFML-2.5.0\lib 

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
Objects0=$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IntermediateDirectory)/graphs.cpp$(ObjectSuffix) $(IntermediateDirectory)/security.cpp$(ObjectSuffix) $(IntermediateDirectory)/Window_Size.cpp$(ObjectSuffix) $(IntermediateDirectory)/addCreditor.cpp$(ObjectSuffix) $(IntermediateDirectory)/exception.cpp$(ObjectSuffix) $(IntermediateDirectory)/date.cpp$(ObjectSuffix) $(IntermediateDirectory)/accountant.cpp$(ObjectSuffix) $(IntermediateDirectory)/processor.cpp$(ObjectSuffix) 



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
$(IntermediateDirectory)/main.cpp$(ObjectSuffix): main.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/lekenot/Desktop/Teboho-Lekeno-EE-Stuff/richard/loanShark/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.cpp$(PreprocessSuffix) main.cpp

$(IntermediateDirectory)/graphs.cpp$(ObjectSuffix): graphs.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/lekenot/Desktop/Teboho-Lekeno-EE-Stuff/richard/loanShark/graphs.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/graphs.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/graphs.cpp$(PreprocessSuffix): graphs.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/graphs.cpp$(PreprocessSuffix) graphs.cpp

$(IntermediateDirectory)/security.cpp$(ObjectSuffix): security.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/lekenot/Desktop/Teboho-Lekeno-EE-Stuff/richard/loanShark/security.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/security.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/security.cpp$(PreprocessSuffix): security.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/security.cpp$(PreprocessSuffix) security.cpp

$(IntermediateDirectory)/Window_Size.cpp$(ObjectSuffix): Window_Size.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/lekenot/Desktop/Teboho-Lekeno-EE-Stuff/richard/loanShark/Window_Size.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Window_Size.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Window_Size.cpp$(PreprocessSuffix): Window_Size.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Window_Size.cpp$(PreprocessSuffix) Window_Size.cpp

$(IntermediateDirectory)/addCreditor.cpp$(ObjectSuffix): addCreditor.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/lekenot/Desktop/Teboho-Lekeno-EE-Stuff/richard/loanShark/addCreditor.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/addCreditor.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/addCreditor.cpp$(PreprocessSuffix): addCreditor.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/addCreditor.cpp$(PreprocessSuffix) addCreditor.cpp

$(IntermediateDirectory)/exception.cpp$(ObjectSuffix): exception.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/lekenot/Desktop/Teboho-Lekeno-EE-Stuff/richard/loanShark/exception.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/exception.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/exception.cpp$(PreprocessSuffix): exception.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/exception.cpp$(PreprocessSuffix) exception.cpp

$(IntermediateDirectory)/date.cpp$(ObjectSuffix): date.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/lekenot/Desktop/Teboho-Lekeno-EE-Stuff/richard/loanShark/date.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/date.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/date.cpp$(PreprocessSuffix): date.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/date.cpp$(PreprocessSuffix) date.cpp

$(IntermediateDirectory)/accountant.cpp$(ObjectSuffix): accountant.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/lekenot/Desktop/Teboho-Lekeno-EE-Stuff/richard/loanShark/accountant.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/accountant.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/accountant.cpp$(PreprocessSuffix): accountant.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/accountant.cpp$(PreprocessSuffix) accountant.cpp

$(IntermediateDirectory)/processor.cpp$(ObjectSuffix): processor.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/lekenot/Desktop/Teboho-Lekeno-EE-Stuff/richard/loanShark/processor.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/processor.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/processor.cpp$(PreprocessSuffix): processor.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/processor.cpp$(PreprocessSuffix) processor.cpp

##
## Clean
##
clean:
	$(RM) -r ./Debug/


