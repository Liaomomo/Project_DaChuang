function fileSelected() {
    var file = document.getElementById('file').files[0];
    if (file) {
        var fileSize = 0;
        if (file.size > 1024 * 1024)
            fileSize = (Math.round(file.size * 100 / (1024 * 1024)) / 100).toString() + 'MB';
        else
            fileSize = (Math.round(file.size * 100 / 1024) / 100).toString() + 'KB';
        document.getElementById('fileName').innerHTML = '文件名: ' + file.name;
        document.getElementById('fileSize').innerHTML = '文件大小: ' + fileSize;
        document.getElementById('fileType').innerHTML = '文件类型: ' + file.type;
    }
}
