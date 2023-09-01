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
        exec("sudo chown -R $(whoami) @directory")
    end
end
