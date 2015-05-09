<h1>Batch file for backup for Windows </h1>
<h2>Release #0.01 of 09.05.2015.</h2>
Periodically saving a certain folder in the archive and delete irrelevant files under Windows
#####
 - Create a folder for future archives.
 - Place the file there backup_folder.bat
Faye take from this repository accordingly to your version of Windows and your language.
 - Customize the settings within backup_folder.bat
For this edit lines:
```batch
rem Location of copy
set from = D: \ HOMEBANK \ base
rem for the log file copying
set log = result_%DATE%.txt
rem How to post archives
set old = 30
```
- Check out how it works - running the file. In the same folder, create a folder must backup and log file. Restarting the file does not have to create the file, but simply display a warning. Tweak parameters if necessary.
  - Set up Periodic run the file. To do this, you can place a link to the file in the startup when your computer starts.

===============================================================================
<h1>Batch файл для архивации важной папки под Windows </h1>
<h2>Релиз #0.01 of 09.05.2015.</h2>  
Периодическое сохранение определённой папки в архив и удаление неактуальных архивов под Windows
#####
 - Создайте папку для будущих архивов.
 - Поместите туда файл backup_folder.bat
Фай возьмите из этого репозитория соответственно Вашей версии системы Windows и Вашего языка.
 - Настройте параметры внутри backup_folder.bat
Для этого отредактировать строчки:
```batch
rem Откуда копируем
set from=D:\HOMEBANK\base
rem Файл для логов копирования
set log=result_%DATE%.txt
rem Сколько архивов оставлять
set old=30
```
 - Проверьте, как это работает — запустив файл. В этой же папке должны создаться папка бекапа и файл логов. Повторный запуск файла не должен создать архив, а просто вывести предупреждение. Подправьте параметры, если это необходимо.
 - Настройте периодический запуск файла. Для этого можно поместить ссылку на файл в автозагрузку при старте компьютера. 

===============================================================================
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.