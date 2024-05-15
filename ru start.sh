#!/bin/sh


# ░██████╗████████╗░█████╗░██████╗░████████╗░░░░██████╗██╗░░██╗
# ██╔════╝╚══██╔══╝██╔══██╗██╔══██╗╚══██╔══╝░░░██╔════╝██║░░██║
# ╚█████╗░░░░██║░░░███████║██████╔╝░░░██║░░░░░░╚█████╗░███████║
# ░╚═══██╗░░░██║░░░██╔══██║██╔══██╗░░░██║░░░░░░░╚═══██╗██╔══██║
# ██████╔╝░░░██║░░░██║░░██║██║░░██║░░░██║░░░██╗██████╔╝██║░░██║
# ╚═════╝░░░░╚═╝░░░╚═╝░░╚═╝╚═╝░░╚═╝░░░╚═╝░░░╚═╝╚═════╝░╚═╝░░╚═╝
#
# Чтобы запустить просто зайдите в репозиторий с данным файлом при помощи [ cd /путь/к/папке ]
# После чего напишите [ sh start.sh ]
#
# Данный ресурс был написан не мною, а dymeth.ru
# В то время как я его лишь отредактировал с целью добавить новый функционал
# (да и вообще я его писал для себя, просто малоли кому-то еще надо)


#########################################
#########################################      !! Все системные пути и названия файлов чувствительны к регистру (заглавные и строчные буквы) !!
######                             ######
######  *** Параметры сервера ***  ######      !! Все системные пути и названия файлов чувствительны к регистру (заглавные и строчные буквы) !!
######                             ######
#########################################      !! Все системные пути и названия файлов чувствительны к регистру (заглавные и строчные буквы) !!
#########################################

# Тип выполнения: none/screen/tmux.
# none - запустить сервер в уже открытом окне;
# screen - создать скрин и запустить там сервер;
# tmux - создать окно тмукса и запустить сервер там;
execution_mode="none"


# Имя запускаемого сервера (Работает только если execution_mode="screen или tmux"!!!).
# Нужно для создания сессии screen/tmux и идентификации процесса в top, htop и т.д.
execution_name="server"


# Отображать ли консоль сервера сразу после запуска скрипта (В этом нету смысла в том случае если execution_mode="none").
# true - подключается автоматически | false - ничего не делать
join_console_after_start="true"


# Тип сервера (Обязательно следует указать!)
# Доступные: Proxy | Bukkit
server_type="Bukkit"


# Название ядра вашеного сервера. (Следует указать для запуска сервера)
# Если указано auto - jar-файл будет автоматически найден. Пример: server.jar
server_core="auto"


# Минимальное количество памяти.
# Примеры значений (в мигабайтах): 2048M 2560M 3072M 3584M 4096M 4608M 5120M 5632M 6144M 6656M 7168M 7680M 8192M 8704M 9216M 9728M 10240M 10752M 11264M 11776M 12288M
# Так-же можно установить 2G 3G 4G итд
min_memory="3072M"


# Максимальное количество памяти.
# Примеры значений (в мигабайтах): 2048M 2560M 3072M 3584M 4096M 4608M 5120M 5632M 6144M 6656M 7168M 7680M 8192M 8704M 9216M 9728M 10240M 10752M 11264M 11776M 12288M
# Так-же можно установить 2G 3G 4G итд
max_memory="3072M"


# Порт сервера. (Указывать не обязательно)
# Если указано default - используется значение из server.properties
server_port="default"


# Использовать ли при запуске принудительное обновление всех чанков до формата текущей версии Майнкрафт-сервера
upgrade_chunks="false"


# Хотите ли вы, чтобы все ваши миры находились в определённой папке? 
# Если у вас уже есть миры которые вы хотите поместить в 1 место то 
# 1. Отключите сервер
# 2. Создайте папку с желаемым названием
# 3. Поместите туда все ваши миры
# 4. Впишите название этой папка вместо default
# 5. Запустите сервер
#
# Если указано значение default то миры останутся лежать в корневой папке сервера либо там где указанно в bukkit.yml
# Чтобы указать значение в bukkit.yml просто добавте туда: (Это не обязательно делать, Вы можете указать желаемое название тут и оно так-же будет работать)
# settings:
#   world-container: тут-пишем-желаемое-название
worlds_folder="default"


# Название всех миров. (Изначально любой мир называется world (Тоесть world, world_nether, world_the_end))
# Если вы хотите заменить world на своё значение то просто замените default на то что хотите
worlds_main_name="default"


# Стоит ли игнорировать версию Java при запуске? (Нужно для того, чтобы запускать сервера к примеру 1.12.2 на 22й джаве)
# true - игнорировать | false - не игнорировать
ignore_java_version="false"



#########################################
#########################################
######                             ######
######  *** Параметры запуска ***  ######
######                          #########
#########################################
#########################################


# Команда для запуска сервера
# Как создавать эти команды можно прочитать тут - https://spigotmc.ru/resources/krasivyj-i-udobnyj-skript-zapuska-dlja-servera-na-linux-start-sh.2007/
java_start_command="java"


# Стоит ли перезапускать сервер если он остановился? (Нажми 2 раза ctrl+c чтобы остановить сервер моментально (убивает процес))
# true - да | false - нет
auto_restart="true"


# Через сколько сервер будет перезапускаться?
# Указывать в секундах! Изначальное значение: 3
restart_time=3

# Нужно ли отображать команду запуска сервера?
# true - да | false - нет
display_start_command="false"



######################################
######################################
######                          ######
######  *** Параметры Java ***  ######
######                          ######
######################################
######################################


# Включить ли профилирование (требуется больше системных ресурсов). Работает только с JDK
profiling="false"


# Предотвращать ли ошибки вида <<module java.base does not "opens java.lang" to unnamed module>>
# Есть смысл использовать только в том случае есть ваша JDK - 12 версии
fix_java_error="false"


# Хост и порт агента отладки. Если указано disable - отладка отключена. Пример: 0.0.0.0:22222
debug_agent_address="disable"


# Файл параметров log4j с расширением .xml. Если указано default - используются настройки по-умолчанию. Пример: log4j2.xml
log4j_config="default"



######################################################
######################################################
#####                                            #####
#####      *** Флаги запуска для сервера ***     #####
#####                                            #####
######################################################
######################################################

# Некоторые флаги запуска были взяты с: https://mcflags.emc.gs
# Здесь можете почитать немного про флаги
# https://black-minecraft.com/resources/kriticheskaja-monografija-statej-pro-optimizirujuschie-flagi-zapuska.4108/
# 

# -XX:+UseAES -XX:+UseAESIntrinsics -XX:+UseFMA

# Флаги запуска для серверов - Bukkit
bukkit_jvm_flags="-Dfile.encoding=UTF-8 -Dlog4j2.formatMsgNoLookups=true -Dnet.kyori.ansi.colorLevel=indexed256 -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+UnlockDiagnosticVMOptions -XX:+AlwaysPreTouch -XX:InitiatingHeapOccupancyPercent=15 -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=30 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+DisableExplicitGC -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -XX:+UseAES -XX:+UseAESIntrinsics -XX:+UseFMA -XX:AllocatePrefetchStyle=1 -XX:+UseLoopPredicate -XX:+RangeCheckElimination -XX:+EliminateLocks -XX:+DoEscapeAnalysis -XX:+UseCodeCacheFlushing -XX:+SegmentedCodeCache -XX:+UseFastJNIAccessors -XX:+OptimizeStringConcat -XX:+UseCompressedOops -XX:+TrustFinalNonStaticFields -XX:+UseInlineCaches -XX:+RewriteBytecodes -XX:+RewriteFrequentPairs -XX:+UseNUMA -XX:+UseFPUForSpilling -XX:+UseNewLongLShift -XX:+UseVectorCmov -XX:+ScavengeBeforeFullGC -XX:+OptimizeFill -Dusing.aikars.flags=https://mcflags.emc.gs/ -Daikars.new.flags=true -XX:+UseNUMA"
bukkit_app_flags=""

# Флаги запуска для серверов - Proxy
proxy_jvm_flags="-Dfile.encoding=UTF-8 -Dlog4j2.formatMsgNoLookups=true -Dnet.kyori.ansi.colorLevel=indexed256 -XX:+UseG1GC -XX:G1HeapRegionSize=4M -XX:+UnlockExperimentalVMOptions -XX:+ParallelRefProcEnabled -XX:+AlwaysPreTouch -XX:MaxInlineLevel=15"
proxy_app_flags=""


# Лучше это не трогать (Я оставил это для будующих обновлений когда я прочитаю еще пару статей, чтобы не было так позорно перед виликим Overwrit'ом)
experimental_flag="true"

######################################################
######################################################
#####                                            #####
#####      *** Ниже, идёт срипт запуска ***      #####
#####  *** Менять который не рекомендуется! ***  #####
#####                                            #####
######################################################
######################################################

process_hint="${execution_name}"
script_name=$(basename "$0")


# Эта проверка для автоматического поиска ядра была написана нейронной сетью ChatGPT 
# так-как я не смог понять как найти .jar файл и правильно написать скрипт для этого
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