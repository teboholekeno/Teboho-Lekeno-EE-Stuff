##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=morembola
ConfigurationName      :=Debug
WorkspacePath          :=C:/Users/lekenot/Desktop/Teboho-Lekeno-EE-Stuff/richard
ProjectPath            :=C:/Users/lekenot/Desktop/Teboho-Lekeno-EE-Stuff/richard/morembola
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
ObjectsFileList        :="morembola.txt"
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
Objects0=$(IntermediateDirectory)/Bullet.cpp$(ObjectSuffix) $(IntermediateDirectory)/Centipede.cpp$(ObjectSuffix) $(IntermediateDirectory)/Player.cpp$(ObjectSuffix) $(IntermediateDirectory)/Mushroom.cpp$(ObjectSuffix) $(IntermediateDirectory)/Collision.cpp$(ObjectSuffix) $(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IntermediateDirectory)/Game.cpp$(ObjectSuffix) $(IntermediateDirectory)/Movable_Objects.cpp$(ObjectSuffix) $(IntermediateDirectory)/Graphics.cpp$(ObjectSuffix) $(IntermediateDirectory)/Window_Size.cpp$(ObjectSuffix) \
	



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
$(IntermediateDirectory)/Bullet.cpp$(ObjectSuffix): Bullet.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/lekenot/Desktop/Teboho-Lekeno-EE-Stuff/richard/morembola/Bullet.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Bullet.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Bullet.cpp$(PreprocessSuffix): Bullet.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Bullet.cpp$(PreprocessSuffix) Bullet.cpp

$(IntermediateDirectory)/Centipede.cpp$(ObjectSuffix): Centipede.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/lekenot/Desktop/Teboho-Lekeno-EE-Stuff/richard/morembola/Centipede.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Centipede.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Centipede.cpp$(PreprocessSuffix): Centipede.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Centipede.cpp$(PreprocessSuffix) Centipede.cpp

$(IntermediateDirectory)/Player.cpp$(ObjectSuffix): Player.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/lekenot/Desktop/Teboho-Lekeno-EE-Stuff/richard/morembola/Player.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Player.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Player.cpp$(PreprocessSuffix): Player.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Player.cpp$(PreprocessSuffix) Player.cpp

$(IntermediateDirectory)/Mushroom.cpp$(ObjectSuffix): Mushroom.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/lekenot/Desktop/Teboho-Lekeno-EE-Stuff/richard/morembola/Mushroom.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Mushroom.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Mushroom.cpp$(PreprocessSuffix): Mushroom.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Mushroom.cpp$(PreprocessSuffix) Mushroom.cpp

$(IntermediateDirectory)/Collision.cpp$(ObjectSuffix): Collision.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/lekenot/Desktop/Teboho-Lekeno-EE-Stuff/richard/morembola/Collision.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Collision.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Collision.cpp$(PreprocessSuffix): Collision.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Collision.cpp$(PreprocessSuffix) Collision.cpp

$(IntermediateDirectory)/main.cpp$(ObjectSuffix): main.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/lekenot/Desktop/Teboho-Lekeno-EE-Stuff/richard/morembola/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.cpp$(PreprocessSuffix) main.cpp

$(IntermediateDirectory)/Game.cpp$(ObjectSuffix): Game.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/lekenot/Desktop/Teboho-Lekeno-EE-Stuff/richard/morembola/Game.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Game.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Game.cpp$(PreprocessSuffix): Game.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Game.cpp$(PreprocessSuffix) Game.cpp

$(IntermediateDirectory)/Movable_Objects.cpp$(ObjectSuffix): Movable_Objects.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/lekenot/Desktop/Teboho-Lekeno-EE-Stuff/richard/morembola/Movable_Objects.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Movable_Objects.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Movable_Objects.cpp$(PreprocessSuffix): Movable_Objects.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Movable_Objects.cpp$(PreprocessSuffix) Movable_Objects.cpp

$(IntermediateDirectory)/Graphics.cpp$(ObjectSuffix): Graphics.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/lekenot/Desktop/Teboho-Lekeno-EE-Stuff/richard/morembola/Graphics.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Graphics.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Graphics.cpp$(PreprocessSuffix): Graphics.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Graphics.cpp$(PreprocessSuffix) Graphics.cpp

$(IntermediateDirectory)/Window_Size.cpp$(ObjectSuffix): Window_Size.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/lekenot/Desktop/Teboho-Lekeno-EE-Stuff/richard/morembola/Window_Size.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Window_Size.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Window_Size.cpp$(PreprocessSuffix): Window_Size.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Window_Size.cpp$(PreprocessSuffix) Window_Size.cpp

##
## Clean
##
clean:
	$(RM) -r ./Debug/


