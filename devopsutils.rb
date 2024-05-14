class DevopsSystemUtil
    def initialize(dir_path, backup_dir_path, file_extension)
        @dir_path = dir_path
        @backup_dir = backup_dir_path
        @extension = file_extension 
    end
    def geneatepath
        dir_storage = Dir.open(@dir_path)
        dir_path = @backup_dir.to_s
        file_storage_copy = dir_storage.each{|each| \
                    puts "cp -r " + each + " " + dir_path + "/" + "backup" + each \
                                            if each.end_with?(@extension)}
        file_storage_move = dir_storage.each{|each| \
                    puts "mv " + each + " " + dir_path + " " + "backup" + each \
                                            if each.end_with?(@extension)}
         return file_storage_copy, file_storage_move
    end
    def getsystemInfo
        return `uname -a`.to_s
    end
    def memory
        return `memory_pressure`.split("\n")
    end
    def user
        return `whoami`.to_s
    end
    def changepermission(directory_path)
        @directory = directory_path
        exec("sudo chown -R $(whoami) #{@directory}")
    end
    def checksystemversion
        return `sh --version`
    end
    def directorycheck
        return `ls -la`.split("\n")
    end
    def filesearch(dir_path,file_extension)
        @dir = Dir.open(dir_path)
        @file_ext = file_extension
        file_list = Array.new()
        @dir.each{|each| file_list.push(each) if each.end_with?(@file_ext)}
        return file_list
    end
    def generate_push_ssh(dir_path, file_extension, remote_server, remote_address)
        dir_string = dir_path
        @dir = Dir.open(dir_path)
        @file = file_extension
        @remote = remote_server
        @remote_add = remote_address
        generating_path = Array.new()
        @dir.each{|each| generating_path.push(dir_string + each) if each.end_with?(@file)}
        generating_path.map{ |n| "scp -r" + " " + n + " " + @remote + ":" + @remote_add}.each{ |each| puts each}
    end
    def cpucount
	return `cpuinfo`.split("\n").map{|line| line.split}.each{|n| puts n if n[0] == "Count:"}
end
