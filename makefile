define GetFromPkg
$(shell node -p "require('./crafting-efficiency-2/info.json').$(1)")
endef

NAME := $(call GetFromPkg,name)
VERSION := $(call GetFromPkg,version)

all:run

zip: crafting-efficiency-2
	rm -rf ${NAME}_${VERSION}.zip
	zip -r ${NAME}_${VERSION}.zip ${NAME}

run: zip
	rm ./private/mods/${NAME}_*.zip 
	cp ${NAME}_${VERSION}.zip ./private/mods/
	DRI_PRIME=0 SDL_VIDEODRIVER=wayland ~/factorio/bin/x64/factorio --executable-path ~/factorio/bin/x64/factorio --mod-directory ./private/mods --load-game ~/factorio/saves/crafting-efficiency.zip --graphics-quality very-low

ft:
	~/factorio/bin/x64/factorio --executable-path ~/factorio/bin/x64/factorio --mod-directory ./private/mods --load-game ~//saves/crafting-efficiency.zip --graphics-quality very-low

ft_multi:
	~/factorio/bin/x64/factorio --executable-path ~/factorio/bin/x64/factorio --mod-directory ./private/mods --graphics-quality very-low
