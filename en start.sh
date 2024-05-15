#!/bin/sh


# ░██████╗████████╗░█████╗░██████╗░████████╗░░░░██████╗██╗░░██╗
# ██╔════╝╚══██╔══╝██╔══██╗██╔══██╗╚══██╔══╝░░░██╔════╝██║░░██║
# ╚█████╗░░░░██║░░░███████║██████╔╝░░░██║░░░░░░╚█████╗░███████║
# ░╚═══██╗░░░██║░░░██╔══██║██╔══██╗░░░██║░░░░░░░╚═══██╗██╔══██║
# ██████╔╝░░░██║░░░██║░░██║██║░░██║░░░██║░░░██╗██████╔╝██║░░██║
# ╚═════╝░░░░╚═╝░░░╚═╝░░╚═╝╚═╝░░╚═╝░░░╚═╝░░░╚═╝╚═════╝░╚═╝░░╚═╝
#
# To run this script, just log into the repository with this file using [ cd /way/tp/rep ] command
# After that use the [ sh start.sh ] command
#
# This script wasn't written by me, but by dymeth.ru
# While I only edited it in order to add new features and fix the previous
# (anyway, I wrote it for myself, and I posted it just because maybe someone else need it)


#######################################
#######################################      !! All system paths and file names are case sensitive (uppercase and lowercase letters) !!
######                           ######
######  *** Server Settings ***  ######      !! All system paths and file names are case sensitive (uppercase and lowercase letters) !!
######                           ######
#######################################      !! All system paths and file names are case sensitive (uppercase and lowercase letters) !!
#######################################

# Execution mode: none/screen/tmux.
# none - start the server in an already open window;
# screen - create a screen and run the server there;
# tmux - create a tmux window and run the server there;
execution_mode="none"


# The name of the server being started (Works only if execution_mode="screen or tmux"!!!).
# It is necessary to create a screen/tmux session and identify the process in top, htop, etc.
execution_name="server"


# Whether to display the server console immediately after running the script (This makes no sense if execution_mode="none").
# true - connects automatically | false - do nothing
join_console_after_start="true"


# Server type (Be sure to specify!)
# Available: Proxy | Bukkit
server_type="Bukkit"


# The name of your server's core. (It is necessary to start it)
# If "auto" is specified, the jar file will be found automatically. Example: server.jar
server_core="auto"


# The minimum amount of allocated memory.
# Examples of values (in megabytes): 2048M 2560M 3072M 3584M 4096M 4608M 5120M 5632M 6144M 6656M 7168M 7680M 8192M 8704M 9216M 9728M 10240M 10752M 11264M 11776M 12288M
# You can also install 2G 3G 4G, etc.
min_memory="3072M"


# The maximum amount of allocated memory.
# Examples of values (in megabytes): 2048M 2560M 3072M 3584M 4096M 4608M 5120M 5632M 6144M 6656M 7168M 7680M 8192M 8704M 9216M 9728M 10240M 10752M 11264M 11776M 12288M
# You can also install 2G 3G 4G, etc.
max_memory="3072M"


# The server port. (It is not necessary to specify)
# If default is specified, the value from server.properties is used
server_port="default"


#Should I use a forced update of all chunks to the format of the current version of the Minecraft server at startup
upgrade_chunks="false"


# Do you want all your worlds to be in a specific folder?
# If you already have worlds that you want to put in 1 place then
# 1. Shutdown the server
# 2. Create a folder with the desired name
# 3. Put all your worlds there
# 4. Enter the name of this folder instead of default
# 5. Start the server
#
# If the "default" value is specified, the worlds will remain in the folder with server core or in specified folder in bukkit.yml
# To specify a folder in bukkit.yml, just add it there: (It is not necessary to do this, you can specify the desired name here and it will also work)
# settings:
#   world-container: here-write-the-desired-name
worlds_folder="default"


# The main name of all the worlds. (Initially, any world is called world (I.e. world, world_nether, world_the_end))
# If you want to replace world with your own value, then just replace "default" with what you want
worlds_main_name="default"


# Should core ignore the Java version at startup? (It is necessary in order to run servers for example 1.12.2 on 22nd Java)
# true - ignore | false - do nothing
ignore_java_version="false"



########################################
########################################
######                            ######
######  *** Startup settings ***  ######
######                            ######
########################################
########################################


# Startup command
# You can read how to create these commands here - https://spigotmc.ru/resources/krasivyj-i-udobnyj-skript-zapuska-dlja-servera-na-linux-start-sh.2007/ (On russian lang, but u can also tranlslate)
java_start_command="java"


# Is it worth restarting the server if it has stopped? (Press ctrl+c 2 times to stop the server instantly (kills the process))
# true - yes | false - do nothing
auto_restart="true"


# How long will it take for the server to restart? (In seconds) 
# default: 3
restart_time=3

# Does it need to display the server startup command?
# true - yes | false - do nothing
display_start_command="false"



#####################################
#####################################
######                         ######
######  *** Java settings ***  ######
######                         ######
#####################################
#####################################


# Whether to enable profiling (requires more system resources). 
# Works only with JDK
profiling="false"


# Whether to prevent errors like <<java module.base does not "opens java.lang" to unnamed module>>
# May be useful it only if your JDK version is 12
fix_java_error="false"


# The host and port of the debugging agent. If "disable" value is specified, debugging is disabled. Example: 0.0.0.0:22222
debug_agent_address="disable"


# The log4j parameter file with the .xml extension. If default is specified, the default settings are used. Example: log4j2.xml
log4j_config="default"



#########################################################
#########################################################
#####                                               #####
#####      *** Startup flags for the server ***     #####
#####                                               #####
#########################################################
#########################################################

# Some flags were taken from: https://mcflags.emc.gs
# You can read a little bit about flags here:
# https://black-minecraft.com/resources/kriticheskaja-monografija-statej-pro-optimizirujuschie-flagi-zapuska.4108/ (On russian lang, but u can also tranlslate)
# 

# -XX:+UseAES -XX:+UseAESIntrinsics -XX:+UseFMA

# Startup flags for server with - Bukkit core
bukkit_jvm_flags="-Dfile.encoding=UTF-8 -Dlog4j2.formatMsgNoLookups=true -Dnet.kyori.ansi.colorLevel=indexed256 -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+UnlockDiagnosticVMOptions -XX:+AlwaysPreTouch -XX:InitiatingHeapOccupancyPercent=15 -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=30 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+DisableExplicitGC -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -XX:+UseAES -XX:+UseAESIntrinsics -XX:+UseFMA -XX:AllocatePrefetchStyle=1 -XX:+UseLoopPredicate -XX:+RangeCheckElimination -XX:+EliminateLocks -XX:+DoEscapeAnalysis -XX:+UseCodeCacheFlushing -XX:+SegmentedCodeCache -XX:+UseFastJNIAccessors -XX:+OptimizeStringConcat -XX:+UseCompressedOops -XX:+TrustFinalNonStaticFields -XX:+UseInlineCaches -XX:+RewriteBytecodes -XX:+RewriteFrequentPairs -XX:+UseNUMA -XX:+UseFPUForSpilling -XX:+UseNewLongLShift -XX:+UseVectorCmov -XX:+ScavengeBeforeFullGC -XX:+OptimizeFill -Dusing.aikars.flags=https://mcflags.emc.gs/ -Daikars.new.flags=true -XX:+UseNUMA"
bukkit_app_flags=""

# Startup flags for server with - Proxy core
proxy_jvm_flags="-Dfile.encoding=UTF-8 -Dlog4j2.formatMsgNoLookups=true -Dnet.kyori.ansi.colorLevel=indexed256 -XX:+UseG1GC -XX:G1HeapRegionSize=4M -XX:+UnlockExperimentalVMOptions -XX:+ParallelRefProcEnabled -XX:+AlwaysPreTouch -XX:MaxInlineLevel=15"
proxy_app_flags=""


# It's better not to touch it (I left it for updates in future)
experimental_flag="true"

##############################################################
##############################################################
#####                                                    #####
#####      *** Below, there is a startup script ***      #####
#####       *** Not recommended to change it! ***        #####
#####                                                    #####
##############################################################
##############################################################

process_hint="${execution_name}"
script_name=$(basename "$0")


# This check to automatically find server's core was written by the ChatGPT network 
# because I couldn't figure out how to find .jar file and correctly write a script for this
if [ -z "$server_core" ]; then
    echo "Error: server_core file must be specified"
    exit 1
elif [ "$server_core" = "auto" ]; then
    jar_files=$(find . -maxdepth 1 -type f -name "*.jar")
    jar_count=$(echo "$jar_files" | wc -l)
    if [ "$jar_count" -eq 0 ]; then
        echo ""
        echo "Error: No .jar files found in the current directory"
        echo ""
        exit 1
    elif [ "$jar_count" -gt 1 ]; then
        echo ""
        echo "Error: Multiple .jar files found in the current directory"
        echo ""
        exit 1
    fi
    core_file=$(basename "$jar_files")
else
    core_file=$(find . -maxdepth 1 -type f -name "$server_core")
    if [ -z "$core_file" ]; then
        echo ""
        echo "Error: Core file '$server_core' wasn't found"
        echo ""
        exit 1
    elif [ ! -f "$core_file" ]; then
        echo ""
        echo "Error: '$core_file' is not a regular file"
        echo ""
        exit 1
    elif [ ! -r "$core_file" ]; then
        echo ""
        echo "Error: '$core_file' is not readable"
        echo ""
        exit 1
    fi
fi
##################################################################


if [ "$1" != "deep" ]; then
	if [ -z "$join_console_after_start" ]; then
		echo ""
		echo "Error: join_console_after_start must be true or false"
		echo ""
		exit 1
	elif [ "$join_console_after_start" != "true" ] && [  "$join_console_after_start" != "false" ]; then
		echo ""
		echo "Error: join_console_after_start must be true or false"
		echo ""
		exit 1
	elif [ -z "$execution_name" ]; then
		echo ""
		echo "Error: execution_name file must be specified"
		echo ""
		exit 1
	elif [ -z "$execution_mode" ]; then
		echo ""
		echo "Error: execution_mode file must be screen, tmux or none"
		echo ""
		exit 1
	elif [ "$execution_mode" = "screen" ]; then
		screen -A -m -d -S ${execution_name} bash "${script_name}" deep
		[ "$join_console_after_start" = true ] && sleep 0.2 && screen -x ${execution_name}
	elif [ "$execution_mode" = "tmux" ]; then
		tmux new -d -s ${execution_name}
		sleep 0.2
		tmux send-keys -t ${execution_name} "bash \"${script_name}\" deep" Enter
		[ "$join_console_after_start" = true ] && sleep 0.2 && tmux attach -t ${execution_name}
	elif [ "$execution_mode" = "none" ]; then
		echo ""
		echo "Server will start in a couple of minutes"
		sleep 2.0
		bash "${script_name}" deep
	else
		echo ""
		echo "Error: Wrong execution_mode: $execution_mode"
		echo "Execution_mode file must be screen, tmux or none"
		echo ""
	fi
	exit
fi

#!/bin/bash

if [ -n "$java_start_command" ]; then
	start_command="$java_start_command"
else
	echo "Error: you didn't write java_start_command!"
	exit 1
fi


if [ -z "$worlds_folder" ]; then
	echo "Error: worlds_folder is empty. Value for it will be taken from bukkit.yml"
	exit 1
elif [ -n "$worlds_folder" ] && [ "$worlds_folder" != "default" ]; then
	if [ "$server_type" = "Bukkit" ]; then
		bukkit_app_flags+=" --world-dir ${worlds_folder}"
	fi
fi


if [ -z "$worlds_main_name" ]; then
	echo "Error: worlds_main_name is empty. Value for it will be taken from server.properties"
	exit 1
elif [ -n "$worlds_main_name" ] && [ "$worlds_main_name" != "default" ]; then
	if [ "$server_type" = "Bukkit" ]; then
		bukkit_app_flags+=" --world-dir ${worlds_main_name}"
	fi
fi

if [ -z "$profiling" ]; then
	echo "Error: profiling must be true or false"
	exit 
elif [ "$profiling" = "true" ]; then
	process_hint+="-profiling"
	bukkit_jvm_flags="${bukkit_jvm_flags// -XX:+PerfDisableSharedMem/}"
	bukkit_jvm_flags+=" -Xshare:off"
	proxy_jvm_flags="${proxy_jvm_flags// -XX:+PerfDisableSharedMem/}"
	proxy_jvm_flags+=" -Xshare:off"1
fi

process_hint="$USER.${process_hint}"

add_opens_packages=()
add_modules_list=(
	"jdk.incubator.vector"
)

if [ "$fix_java_error" = true ]; then
	add_opens_packages+=(
		"java.base/java.lang"
		"java.base/java.lang.reflect"
		"java.base/java.lang.invoke"
		"java.base/java.security"
	)
elif [ -z "$fix_java_error" ]; then
	echo "Error: fix_java_error must be true or false"
	exit 1
fi

for package in "${add_opens_packages[@]}"; do
	bukkit_jvm_flags+=" --add-opens ${package}=ALL-UNNAMED"
	proxy_jvm_flags+=" --add-opens ${package}=ALL-UNNAMED"
done


if [ "$debug_agent_address" != "disable" ]; then
    if [ -n "$debug_agent_address" ]; then
        if [ "$server_type" = "Bukkit" ]; then
            bukkit_jvm_flags+=" -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=${debug_agent_address}"
        elif [ "$server_type" = "Proxy" ]; then
            proxy_jvm_flags+=" -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=${debug_agent_address}"
        fi
    else
        echo "Error: debug_agent_address is empty"
        exit 1
    fi
fi

if [ -z "$log4j_config" ]; then
	echo ""
	echo "Error: log4j_config file must be specified"
	echo ""
	exit 1
elif [ "$log4j_config" != "default" ]; then
	if [ "$server_type" = "Bukkit" ]; then
		bukkit_jvm_flags+=" -Dlog4j.configurationFile=${log4j_config}"
	elif [ "$server_type" = "Proxy" ]; then
		proxy_jvm_flags+=" -Dlog4j.configurationFile=${log4j_config}"
	fi
fi

if [ "$ignore_java_version" = "true" ]; then
	if [ "$server_type" = "Bukkit" ]; then
		bukkit_jvm_flags+=" -DPaper.IgnoreJavaVersion=true"
	elif [ "$server_type" = "Proxy" ]; then
		proxy_jvm_flags+=" -DPaper.IgnoreJavaVersion=true"
	fi
elif [ -z "$ignore_java_version" ]; then
	echo "Error: proxy_jvm_flags must be true or false"
	exit 1
fi

if [ "$experimental_flag" != "true" ] && [  "$experimental_flag" != "false" ]; then
	echo ""
	echo "Error: experimental_flag must be true or false"
	echo ""
elif [ "$experimental_flag" = "true" ]; then
	bukkit_jvm_flags+=" -XX:+UseFastUnorderedTimeStamps"
elif [ -z "$experimental_flag" ]; then
	echo "Error: experimental_flag must be true or false"
	exit 1
fi

if [ "$server_port" != "default" ]; then # && [ "$server_type" != *[[:alpha:]]* ]; then
	if [ "$server_type" = "Bukkit" ]; then
		bukkit_app_flags+=" -port ${server_port}"
	elif [ "$server_type" = "Proxy" ]; then
		proxy_app_flags+=" -port ${server_port}"
	else
		echo "Error: Invalid server type specified"
		exit 1
	fi
elif [ -z "$server_port" ]; then
	echo "Error: server_port file must be specified"
	exit 1
fi

if [ "$upgrade_chunks" != "false" ] && [ "$upgrade_chunks" != "true" ]; then
    echo "Error: upgrade_chunks should be true or false"
elif [ "$upgrade_chunks" = "true" ]; then
    if [ "$server_type" = "Bukkit" ]; then
        bukkit_app_flags+=" --forceUpgrade"
    fi
elif [ -z "$upgrade_chunks" ]; then
    echo "Error: upgrade_chunks file must be specified"
    exit 1
fi


if [ -z "$min_memory" ]; then
	echo "Error: min_memory file must be specified"
	exit 1
elif [ -z "$max_memory" ]; then
	echo "Error: max_memory file must be specified"
	exit 1
fi


if [ "$server_type" != "Bukkit" ] && [ "$server_type" != "Proxy" ]; then
	echo "Error: server_type please select Bukkit or Proxy"
	exit 1
elif [ "$server_type" = "Bukkit" ]; then
	server_start_command="${start_command} -D_server=${process_hint} -Xms${min_memory} -Xmx${max_memory} ${bukkit_jvm_flags} -jar ${core_file} ${bukkit_app_flags}"
elif [ "$server_type" = "Proxy" ]; then
	server_start_command="${start_command} -D_server=${process_hint} -Xms${min_memory} -Xmx${max_memory} ${proxy_jvm_flags} -jar ${core_file} ${proxy_app_flags}"
elif [ -z "$server_type" ]; then
	echo "Error: server_type file must be specified"
	exit 1
fi

if [ "$display_start_command" = "true" ]; then
	echo ""
	echo "Start command: $server_start_command"
	echo ""
fi


while true; do
	if [ "$server_type" = "Bukkit" ] || [ "$server_type" = "Proxy" ]; then
		eval "${server_start_command}"
		echo ""
		echo "Server $execution_name stopped. Rebooting in:"
	else
		echo "Error: server_type file must be specified"
		exit 1
	fi

	for ((seconds_left=restart_time; seconds_left>0; seconds_left--)); do
		echo "$seconds_left..."
		sleep 1
	done

	if [ "$auto_restart" = "true" ]; then
		echo " Auto restart enabled. Restarting server..."
	elif [ "$auto_restart" = "false" ]; then
		echo " Auto restart disabled."
		break
	fi
done