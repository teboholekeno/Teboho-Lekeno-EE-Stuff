##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=teboho
ConfigurationName      :=Debug
WorkspacePath          :=C:/Users/teboho/Documents/richard
ProjectPath            :=C:/Users/teboho/Documents/richard/loanShark
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=teboho
Date                   :=28/01/2019
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
Preprocessors          :=$(PreprocessorSwitch)SFML_STATIC 
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="teboho.txt"
PCHCompileFlags        :=
MakeDirCommand         :=makedir
RcCmpOptions           := 
RcCompilerName         :=C:/mingw64/bin/windres.exe
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
Objects0=$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IntermediateDirectory)/graphs.cpp$(ObjectSuffix) $(IntermediateDirectory)/Window_Size.cpp$(ObjectSuffix) $(IntermediateDirectory)/security.cpp$(ObjectSuffix) $(IntermediateDirectory)/accountant.cpp$(ObjectSuffix) $(IntermediateDirectory)/processor.cpp$(ObjectSuffix) $(IntermediateDirectory)/exception.cpp$(ObjectSuffix) $(IntermediateDirectory)/date.cpp$(ObjectSuffix) $(IntermediateDirectory)/addCreditor.cpp$(ObjectSuffix) 



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
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Documents/richard/loanShark/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/main.cpp$(DependSuffix) -MM main.cpp

$(IntermediateDirectory)/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.cpp$(PreprocessSuffix) main.cpp

$(IntermediateDirectory)/graphs.cpp$(ObjectSuffix): graphs.cpp $(IntermediateDirectory)/graphs.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Documents/richard/loanShark/graphs.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/graphs.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/graphs.cpp$(DependSuffix): graphs.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/graphs.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/graphs.cpp$(DependSuffix) -MM graphs.cpp

$(IntermediateDirectory)/graphs.cpp$(PreprocessSuffix): graphs.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/graphs.cpp$(PreprocessSuffix) graphs.cpp

$(IntermediateDirectory)/Window_Size.cpp$(ObjectSuffix): Window_Size.cpp $(IntermediateDirectory)/Window_Size.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Documents/richard/loanShark/Window_Size.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Window_Size.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Window_Size.cpp$(DependSuffix): Window_Size.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Window_Size.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Window_Size.cpp$(DependSuffix) -MM Window_Size.cpp

$(IntermediateDirectory)/Window_Size.cpp$(PreprocessSuffix): Window_Size.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Window_Size.cpp$(PreprocessSuffix) Window_Size.cpp

$(IntermediateDirectory)/security.cpp$(ObjectSuffix): security.cpp $(IntermediateDirectory)/security.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Documents/richard/loanShark/security.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/security.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/security.cpp$(DependSuffix): security.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/security.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/security.cpp$(DependSuffix) -MM security.cpp

$(IntermediateDirectory)/security.cpp$(PreprocessSuffix): security.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/security.cpp$(PreprocessSuffix) security.cpp

$(IntermediateDirectory)/accountant.cpp$(ObjectSuffix): accountant.cpp $(IntermediateDirectory)/accountant.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Documents/richard/loanShark/accountant.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/accountant.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/accountant.cpp$(DependSuffix): accountant.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/accountant.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/accountant.cpp$(DependSuffix) -MM accountant.cpp

$(IntermediateDirectory)/accountant.cpp$(PreprocessSuffix): accountant.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/accountant.cpp$(PreprocessSuffix) accountant.cpp

$(IntermediateDirectory)/processor.cpp$(ObjectSuffix): processor.cpp $(IntermediateDirectory)/processor.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Documents/richard/loanShark/processor.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/processor.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/processor.cpp$(DependSuffix): processor.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/processor.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/processor.cpp$(DependSuffix) -MM processor.cpp

$(IntermediateDirectory)/processor.cpp$(PreprocessSuffix): processor.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/processor.cpp$(PreprocessSuffix) processor.cpp

$(IntermediateDirectory)/exception.cpp$(ObjectSuffix): exception.cpp $(IntermediateDirectory)/exception.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Documents/richard/loanShark/exception.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/exception.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/exception.cpp$(DependSuffix): exception.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/exception.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/exception.cpp$(DependSuffix) -MM exception.cpp

$(IntermediateDirectory)/exception.cpp$(PreprocessSuffix): exception.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/exception.cpp$(PreprocessSuffix) exception.cpp

$(IntermediateDirectory)/date.cpp$(ObjectSuffix): date.cpp $(IntermediateDirectory)/date.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Documents/richard/loanShark/date.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/date.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/date.cpp$(DependSuffix): date.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/date.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/date.cpp$(DependSuffix) -MM date.cpp

$(IntermediateDirectory)/date.cpp$(PreprocessSuffix): date.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/date.cpp$(PreprocessSuffix) date.cpp

$(IntermediateDirectory)/addCreditor.cpp$(ObjectSuffix): addCreditor.cpp $(IntermediateDirectory)/addCreditor.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Documents/richard/loanShark/addCreditor.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/addCreditor.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/addCreditor.cpp$(DependSuffix): addCreditor.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/addCreditor.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/addCreditor.cpp$(DependSuffix) -MM addCreditor.cpp

$(IntermediateDirectory)/addCreditor.cpp$(PreprocessSuffix): addCreditor.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/addCreditor.cpp$(PreprocessSuffix) addCreditor.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


