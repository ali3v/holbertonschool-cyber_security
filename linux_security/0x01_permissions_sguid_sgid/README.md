# 1. README faylını yarat
cat << 'EOF' > README.md
# Linux Permissions and Special Modes

Bu layihə Linux əməliyyat sistemində fayl və qovluq icazələrinin idarə edilməsi, istifadəçi qrupları və xüsusi icazə rejimlərinin (SUID, SGID, Sticky Bit) dərindən öyrənilməsinə həsr olunmuşdur.

## 📖 Öyrənmə Hədəfləri
Bu layihənin sonunda aşağıdakı mövzuları izah edə bilməliyik:
* **İcazə Qrupları:** Linux-da 3 əsas icazə qrupu (Owner, Group, Others).
* **Əmrlər:** `chmod`, `sudo`, `su`, `chown`, `chgrp`, `id`, `groups` və s. əmrlərinin istifadəsi.
* **Xüsusi İcazələr:** `SUID` (Set User ID) və `SGID` (Set Group ID) anlayışları və onların təhlükəsizlikdə rolu.
* **Fərqlər:** `chown` (sahibi dəyişmək) və `chgrp` (qrupu dəyişmək) arasındakı fərqlər.
* **Umask:** Standart fayl icazələrini təyin edən `umask` dəyəri və onun hesablanması.
* **Təhlükəsizlik:** Fayl icazələrinin idarə edilməsində ən yaxşı təcrübələr.

## 🛠 Tələblər
* Bütün skriptlər **Kali Linux** üzərində test edilir.
* Skriptlərin ilk sətri `#!/bin/bash` olmalıdır.
* Kodlar **Betty** stilinə və ya uyğun standartlara cavab verməlidir.
* Backticks (\`), `&&` və ya `||` operatorlarından istifadəyə icazə verilmir (xüsusi tapşırıqlarda).

## 📂 Fayl Strukturu
Layihə ərzində yaradılacaq skriptlər fayl icazələrini dəyişdirmək, istifadəçi yaratmaq və qrup hüquqlarını idarə etmək funksiyalarını yerinə yetirəcək.
EOF
