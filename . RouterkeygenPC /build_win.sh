#! / Bin / sh

MXE_ROOT = / home / ruka / Projetos / mxe
SRC_FOLDER = ` pwd `  # angenommen, dass der aktuelle Ordner, ändern sein, um an einem anderen Ort zu kompilieren
Stammordner = ` pwd `
BUILD_FOLDER = $ Stammordner / win
mkdir-p $ BUILD_FOLDER
cd  $ BUILD_FOLDER

cmake-DCMAKE_TOOLCHAIN_FILE = $ MXE_ROOT / usr/i686-pc-mingw32/share/cmake/mxe-conf.cmake-DQT_LUPDATE_EXECUTABLE = lupdate-DQT_LRELEASE_EXECUTABLE = lrelease-DOPENSSL_ROOT_DIR = $ MXE_ROOT / usr/i686-pc-mingw32-DCMAKE_CROSS_COMPILING = TRUE - DCMAKE_BUILD_TYPE = Erscheinungs $ SRC_FOLDER
wenn  [  ? "$"  =  "0"  ] ,  dann        
        machen
sonst
        echo  "Konnte nicht Makefiles erstellen" 1> & 2
        Ausgang 1
fi
wenn  [  ? "$"  =  "0"  ] ,  dann
        machen Installateur
sonst
        echo  "Fehler beim Aufbau" 1> & 2
        Ausgang 1
fi
