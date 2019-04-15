##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=shenge
ConfigurationName      :=Debug
WorkspacePath          :=C:/Users/lekenot/Desktop/Teboho-Lekeno-EE-Stuff/richard
ProjectPath            :=C:/Users/lekenot/Desktop/Teboho-Lekeno-EE-Stuff/richard/shenge
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
ObjectsFileList        :="shenge.txt"
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
Objects0=$(IntermediateDirectory)/graphics.cpp$(ObjectSuffix) $(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IntermediateDirectory)/PlantControl.cpp$(ObjectSuffix) $(IntermediateDirectory)/truck.cpp$(ObjectSuffix) 



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
$(IntermediateDirectory)/graphics.cpp$(ObjectSuffix): graphics.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/lekenot/Desktop/Teboho-Lekeno-EE-Stuff/richard/shenge/graphics.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/graphics.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/graphics.cpp$(PreprocessSuffix): graphics.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/graphics.cpp$(PreprocessSuffix) graphics.cpp

$(IntermediateDirectory)/main.cpp$(ObjectSuffix): main.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/lekenot/Desktop/Teboho-Lekeno-EE-Stuff/richard/shenge/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.cpp$(PreprocessSuffix) main.cpp

$(IntermediateDirectory)/PlantControl.cpp$(ObjectSuffix): PlantControl.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/lekenot/Desktop/Teboho-Lekeno-EE-Stuff/richard/shenge/PlantControl.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/PlantControl.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/PlantControl.cpp$(PreprocessSuffix): PlantControl.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/PlantControl.cpp$(PreprocessSuffix) PlantControl.cpp

$(IntermediateDirectory)/truck.cpp$(ObjectSuffix): truck.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/lekenot/Desktop/Teboho-Lekeno-EE-Stuff/richard/shenge/truck.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/truck.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/truck.cpp$(PreprocessSuffix): truck.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/truck.cpp$(PreprocessSuffix) truck.cpp

##
## Clean
##
clean:
	$(RM) -r ./Debug/


