##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=sdddfd
ConfigurationName      :=Debug
WorkspacePath          :=C:/Users/teboho/Documents/richard
ProjectPath            :=C:/Users/teboho/Documents/richard/sdddfd
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=teboho
Date                   :=02/03/2019
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
ObjectsFileList        :="sdddfd.txt"
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
Objects0=$(IntermediateDirectory)/truck.cpp$(ObjectSuffix) $(IntermediateDirectory)/Window_Size.cpp$(ObjectSuffix) $(IntermediateDirectory)/PlantControl.cpp$(ObjectSuffix) $(IntermediateDirectory)/graphics.cpp$(ObjectSuffix) $(IntermediateDirectory)/main.cpp$(ObjectSuffix) 



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
$(IntermediateDirectory)/truck.cpp$(ObjectSuffix): truck.cpp $(IntermediateDirectory)/truck.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Documents/richard/sdddfd/truck.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/truck.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/truck.cpp$(DependSuffix): truck.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/truck.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/truck.cpp$(DependSuffix) -MM truck.cpp

$(IntermediateDirectory)/truck.cpp$(PreprocessSuffix): truck.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/truck.cpp$(PreprocessSuffix) truck.cpp

$(IntermediateDirectory)/Window_Size.cpp$(ObjectSuffix): Window_Size.cpp $(IntermediateDirectory)/Window_Size.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Documents/richard/sdddfd/Window_Size.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Window_Size.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Window_Size.cpp$(DependSuffix): Window_Size.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Window_Size.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Window_Size.cpp$(DependSuffix) -MM Window_Size.cpp

$(IntermediateDirectory)/Window_Size.cpp$(PreprocessSuffix): Window_Size.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Window_Size.cpp$(PreprocessSuffix) Window_Size.cpp

$(IntermediateDirectory)/PlantControl.cpp$(ObjectSuffix): PlantControl.cpp $(IntermediateDirectory)/PlantControl.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Documents/richard/sdddfd/PlantControl.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/PlantControl.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/PlantControl.cpp$(DependSuffix): PlantControl.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/PlantControl.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/PlantControl.cpp$(DependSuffix) -MM PlantControl.cpp

$(IntermediateDirectory)/PlantControl.cpp$(PreprocessSuffix): PlantControl.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/PlantControl.cpp$(PreprocessSuffix) PlantControl.cpp

$(IntermediateDirectory)/graphics.cpp$(ObjectSuffix): graphics.cpp $(IntermediateDirectory)/graphics.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Documents/richard/sdddfd/graphics.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/graphics.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/graphics.cpp$(DependSuffix): graphics.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/graphics.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/graphics.cpp$(DependSuffix) -MM graphics.cpp

$(IntermediateDirectory)/graphics.cpp$(PreprocessSuffix): graphics.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/graphics.cpp$(PreprocessSuffix) graphics.cpp

$(IntermediateDirectory)/main.cpp$(ObjectSuffix): main.cpp $(IntermediateDirectory)/main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Documents/richard/sdddfd/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/main.cpp$(DependSuffix) -MM main.cpp

$(IntermediateDirectory)/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.cpp$(PreprocessSuffix) main.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


