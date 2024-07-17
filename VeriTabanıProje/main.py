
import tkinter as tk
from tkinter import ttk
from PIL import Image,ImageTk
import sqlite3
from numpy import random
import re
from tkinter import messagebox

bgColour = "#808080"
def clear_widgets(aframe):

	for widget in frame.winfo_children():
		widget.destroy()
def havva_database(): #Filmleri RASTGELE DEĞİŞTİRME
    connection = sqlite3.connect(r"C:\Users\havva\PycharmProjects\VeriTabanıProje\data\havva_database.db")
    cursor = connection.cursor()

    cursor.execute("select Film.FılmAdı,Film.Yonetmen,Film.Yazar, Film.Yıldızlar,Film.Tur, Film.Sure, Film.YayınYılı, Film.Dıl, Film.Ulke, Film.Imdb FROM Film")
    data = cursor.fetchall()
    idx = random.randint(0, len(data) - 1)
    data = data[idx]
    print(data)


    connection.commit()
    connection.close()

    return data


def Insert(entry_FılmAdı, entry_Yonetmen, entry_Yazar, entry_Yıldızlar, entry_Tur, entry_Sure, entry_YayınYılı, entry_Dıl, entry_Ulke, entry_Imdb):
    connection = sqlite3.connect(r"C:\Users\havva\PycharmProjects\VeriTabanıProje\data\havva_database.db")
    cursor = connection.cursor()

    FılmAdı=entry_FılmAdı.get()
    Yonetmen=entry_Yonetmen.get()
    Yazar=entry_Yazar.get()
    Yıldızlar=entry_Yıldızlar.get()
    Tur=entry_Tur.get()
    Sure=entry_Sure.get()
    YayınYılı=entry_YayınYılı.get()
    Dıl=entry_Dıl.get()
    Ulke=entry_Ulke.get()
    Imdb=entry_Imdb.get()


    sql= 'Insert Into Film(FılmAdı,Yonetmen,Yazar,Yıldızlar,Tur,Sure,YayınYılı,Dıl,Ulke,Imdb) values (?,?,?,?,?,?,?,?,?,?);'
    values = (FılmAdı,Yonetmen,Yazar,Yıldızlar,Tur,Sure,YayınYılı,Dıl,Ulke,Imdb)
    cursor.execute(sql,values)


    connection.commit()
    connection.close()
    print("EKLEME İŞLEMİ BAŞARILI!")
    messagebox.showinfo("Film Eklendi", f"{FılmAdı} adlı film eklendi.")


def Update(entry_FılmAdı, entry_Yonetmen, entry_Yazar, entry_Yıldızlar, entry_Tur, entry_Sure, entry_YayınYılı, entry_Dıl, entry_Ulke, entry_Imdb):
    connection = sqlite3.connect(r"C:\Users\havva\PycharmProjects\VeriTabanıProje\data\havva_database.db")
    cursor = connection.cursor()

    FılmAdı = entry_FılmAdı.get()
    Yonetmen = entry_Yonetmen.get()
    Yazar = entry_Yazar.get()
    Yıldızlar= entry_Yıldızlar.get()
    Tur= entry_Tur.get()
    Sure = entry_Sure.get()
    YayınYılı = entry_YayınYılı.get()
    Dıl= entry_Dıl.get()
    Ulke= entry_Ulke.get()
    Imdb= entry_Imdb.get()


    sql = 'Update Film Set FılmAdı= ?,Yonetmen=?,Yazar=?,Yıldızlar=?, Tur=?, Sure=?,YayınYılı=?, Dıl=?,Ulke=?, Imdb=?'
    values=(FılmAdı,Yonetmen,Yazar,Yıldızlar,Tur, Sure, YayınYılı, Dıl ,Ulke, Imdb)
    cursor.execute(sql,values)

    connection.commit()
    connection.close()
    LoadFrame4()

    print("DÜZENLEME İŞLEMİ BAŞARILI!")
    messagebox.showinfo("Film Düzenlendi", f"{FılmAdı} adlı film düzenlendi.")

def Delete(FılmAdı):
    connection = sqlite3.connect(r"C:\Users\havva\PycharmProjects\VeriTabanıProje\data\havva_database.db")
    cursor = connection.cursor()

    sql = 'Delete from film where FılmAdı=?'
    values = (FılmAdı,) # [filmAdi]
    cursor.execute(sql, values)

    connection.commit()
    connection.close()

    LoadFrame5()

    print("SİLME İŞLEMİ BAŞARILI!")
    messagebox.showinfo("Film Silindi", f"{FılmAdı} adlı film silindi.")

def Select():
    connection = sqlite3.connect(r"C:\Users\havva\PycharmProjects\VeriTabanıProje\data\havva_database.db")
    cursor = connection.cursor()

    cursor.execute('select Film.FılmAdı,Film.Yonetmen,Film.Yazar, Film.Yıldızlar,Film.Tur, Film.Sure, Film.YayınYılı, Film.Dıl, Film.Ulke, Film.Imdb FROM Film')
    data= cursor.fetchall()

    connection.commit()
    connection.close()
    print("EKLEME İŞLEMİ BAŞARILI!")
    return data


def IndexChangedUpdate(event):
    selected_item = event.widget.get()
    print("düzensiz değerler",selected_item)
    selected_item = re.sub('\{(.*?)\}','', selected_item).split()


    print("Dizi Olarak Değerler:", selected_item)
    # film adi
    FılmAdı = tk.Label(frameMain4, text="Film Adı:")
    FılmAdı.grid(row=1, column=0, padx=5, pady=5, sticky=tk.W)
    entry_FılmAdı = tk.Entry(frameMain4)
    entry_FılmAdı.insert(0, selected_item[1])
    entry_FılmAdı.grid(row=1, column=1, padx=5, pady=5)

    # Film Yönetmeni
    label_Yonetmen = tk.Label(frameMain4, text="Film Yönetmeni:")
    label_Yonetmen.grid(row=2, column=0, padx=5, pady=5, sticky=tk.W)
    entry_Yonetmen = tk.Entry(frameMain4)
    entry_Yonetmen.insert(1, selected_item[2])
    entry_Yonetmen.grid(row=2, column=1, padx=5, pady=5)

    # Film Yazarı
    label_Yazar = tk.Label(frameMain4, text="Film Yazarı:")
    label_Yazar.grid(row=3, column=0, padx=5, pady=5, sticky=tk.W)
    entry_Yazar = tk.Entry(frameMain4)
    entry_Yazar.insert(0, selected_item[3])
    entry_Yazar.grid(row=3, column=1, padx=5, pady=5)

    # film yıldızları
    label_Yıldızlar= tk.Label(frameMain4, text="Film Yıldızları:")
    label_Yıldızlar.grid(row=4, column=0, padx=5, pady=5, sticky=tk.W)
    entry_Yıldızlar = tk.Entry(frameMain4)
    entry_Yıldızlar.insert(0, selected_item[4])
    entry_Yıldızlar.grid(row=4, column=1, padx=5, pady=5)


    # film tür
    label_Tur = tk.Label(frameMain4, text="Film Türü:")
    label_Tur.grid(row=5, column=0, padx=5, pady=5, sticky=tk.W)
    entry_Tur = tk.Entry(frameMain4)
    entry_Tur.insert(0, selected_item[5])
    entry_Tur.grid(row=5, column=1, padx=5, pady=5)

    # film süre
    label_Sure = tk.Label(frameMain4, text="Film Süresi:")
    label_Sure.grid(row=6, column=0, padx=5, pady=5, sticky=tk.W)
    entry_Sure = tk.Entry(frameMain4)
    entry_Sure.insert(0, selected_item[6])
    entry_Sure.grid(row=6, column=1, padx=5, pady=5)

    # film yayın yılı
    label_YayınYılı = tk.Label(frameMain4, text="Yayın Yılı:")
    label_YayınYılı.grid(row=7, column=0, padx=5, pady=5, sticky=tk.W)
    entry_YayınYılı = tk.Entry(frameMain4)
    entry_YayınYılı.insert(0, selected_item[7])
    entry_YayınYılı.grid(row=7, column=1, padx=5, pady=5)

    # film dil
    label_Dıl = tk.Label(frameMain4, text="Dil:")
    label_Dıl.grid(row=8, column=0, padx=5, pady=5, sticky=tk.W)
    entry_Dıl = tk.Entry(frameMain4)
    entry_Dıl.insert(0, selected_item[8])
    entry_Dıl.grid(row=8, column=1, padx=5, pady=5)

    # film ülke
    label_Ulke = tk.Label(frameMain4, text="Ülke:")
    label_Ulke.grid(row=9, column=0, padx=5, pady=5, sticky=tk.W)
    entry_Ulke = tk.Entry(frameMain4)
    entry_Ulke.insert(0, selected_item[9])
    entry_Ulke.grid(row=9, column=1, padx=5, pady=5)

    # film imdb
    label_Imdb = tk.Label(frameMain4, text="Imdb:")
    label_Imdb.grid(row=10, column=0, padx=5, pady=5, sticky=tk.W)
    entry_Imdb = tk.Entry(frameMain4)
    entry_Imdb.insert(0, selected_item[10])
    entry_Imdb.grid(row=10, column=1, padx=5, pady=5)

    # değiştir düğmesi
    tk.Button(
        frameMain4,
        text="Film DEĞİŞTİR",
        font=("TkHeadingFont", 16),
        bg="#0099FF",
        fg="white",
        cursor="hand2",
        activebackground="#badee2",
        activeforeground="black",
        command=lambda: Update(selected_item[0],entry_FılmAdı, entry_Yonetmen, entry_Yazar, entry_Yıldızlar, entry_Tur,
                               entry_Sure, entry_YayınYılı, entry_Dıl, entry_Ulke, entry_Imdb,
                               )).grid(row=12, column=2, columnspan=2, pady=10)

def IndexChangedDelete(event):
    selected_item = event.widget.get()
    selected_item = re.sub('\{(.*?)\}', '', selected_item).split()
    id=selected_item[0] #silinecek film adı
    print(id)

    # silme butonu
    tk.Button(
        frameMain5,
        text="FİLMİ SİL",
        font=("TkHeadingFont", 16),
        bg="#0099FF",
        fg="white",
        cursor="hand2",
        activebackground="#badee2",
        activeforeground="black",
        command=lambda: Delete(id)).grid(row=12, column=2, columnspan=2, pady=10)

def LoadFrame1(): #ANASAYFA
    clear_widgets(frameMain)
    frameMain.tkraise() #ana frame'i en önde tutma
    frameMain.pack_propagate(False) #frame boyutunu sabit tutma
    # logo widget
    imge = Image.open(r"C:\Users\havva\PycharmProjects\VeriTabanıProje\assets\commerce.png").resize((150, 150))

    imgLogo = ImageTk.PhotoImage(imge)
    logoWidget = tk.Label(frameMain, image=imgLogo, bg=bgColour)
    logoWidget.image = imgLogo
    logoWidget.pack() #ortalama

    frameLeft = tk.Frame(frameMain)
    frameLeft.pack(side=tk.LEFT)

    frameRight = tk.Frame(frameMain)
    frameRight.pack(side=tk.RIGHT)

    tk.Label(
        frameMain,
        text="FİLM VE FİLM",
        bg=bgColour,
        fg="white",  # text colour
        font=("TkMenuFont", 20)
    ).pack()

    # button widget
    tk.Button(
        frameLeft,
        text="KEŞFET",
        font=("TkHeadingFont", 15),
        bg="#0099FF",
        fg="white",
        cursor="hand2",
        activebackground="#badee2",
        activeforeground="black",
        command=lambda:LoadFrame2()
    ).pack(pady=20)

    # button widget
    ekle=tk.Button(
        frameRight,
        text="EKLE",
        font=("TkHeadingFont", 15),
        bg="#0099FF",
        fg="white",
        cursor="hand2",
        activebackground="#badee2",
        activeforeground="black",
        command=lambda:LoadFrame3()
    ).pack( pady=15)


    # button widget
    duzenle=tk.Button(
        frameLeft,
        text="DÜZENLE",
        font=("TkHeadingFont", 15),
        bg="#0099FF",
        fg="white",
        cursor="hand2",
        activebackground="#badee2",
        activeforeground="black",
        command=lambda:LoadFrame4()
    ).pack( pady=15)


    sil=tk.Button(
        frameRight,
        text="SİL",
        font=("TkHeadingFont", 15),
        bg="#0099FF",
        fg="white",
        cursor="hand2",
        activebackground="#badee2",
        activeforeground="black",
        command=lambda:LoadFrame5()
    ).pack( pady=15)

    # button widget
    çıkış=tk.Button(
        frameRight,
        text="ÇIKIŞ",
        font=("TkHeadingFont", 15),
        bg="#0099FF",
        fg="white",
        cursor="hand2",
        activebackground="#badee2",
        activeforeground="black",
        command=root.destroy  # root.destroy() kullanılabilir
    ).pack(pady=15)


    korku=tk.Button(
        frameLeft,
        text="KORKU",
        font=("TkHeadingFont", 15),
        bg="#0099FF",
        fg="white",
        cursor="hand2",
        activebackground="#badee2",
        activeforeground="black",
        command=lambda: LoadFrame6()
    )
    korku.pack(pady=15)

    romantik = tk.Button(
        frameRight,
        text="ROMANTİK",
        font=("TkHeadingFont", 15),
        bg="#0099FF",
        fg="white",
        cursor="hand2",
        activebackground="#badee2",
        activeforeground="black",
        command=lambda: LoadFrame7()
    )
    romantik.pack(pady=15)

    bilimKurgu = tk.Button(
        frameLeft,
        text="Bilim Kurgu",
        font=("TkHeadingFont", 15),
        bg="#0099FF",
        fg="white",
        cursor="hand2",
        activebackground="#badee2",
        activeforeground="black",
        command=lambda: LoadFrame8()
    )
    bilimKurgu.pack(pady=15)

    romantikKomedi = tk.Button(
        frameRight,
        text="Romantik Komedi",
        font=("TkHeadingFont", 15),
        bg="#0099FF",
        fg="white",
        cursor="hand2",
        activebackground="#badee2",
        activeforeground="black",
        command=lambda: LoadFrame9()
    )
    romantikKomedi.pack(pady=15)

    komedi = tk.Button(
        frameLeft,
        text="KOMEDİ",
        font=("TkHeadingFont", 15),
        bg="#0099FF",
        fg="white",
        cursor="hand2",
        activebackground="#badee2",
        activeforeground="black",
        command=lambda: LoadFrame10()
    )
    komedi.pack(pady=15)

    dram = tk.Button(
        frameRight,
        text="DRAM",
        font=("TkHeadingFont", 15),
        bg="#0099FF",
        fg="white",
        cursor="hand2",
        activebackground="#badee2",
        activeforeground="black",
        command=lambda: LoadFrame11()
    )
    dram.pack(pady=15)

    aksiyon = tk.Button(
        frameLeft,
        text="AKSİYON",
        font=("TkHeadingFont", 15),
        bg="#0099FF",
        fg="white",
        cursor="hand2",
        activebackground="#badee2",
        activeforeground="black",
        command=lambda: LoadFrame12()
    )
    aksiyon.pack(pady=15)

    animasyon = tk.Button(
        frameRight,
        text="ANİMASYON",
        font=("TkHeadingFont", 15),
        bg="#0099FF",
        fg="white",
        cursor="hand2",
        activebackground="#badee2",
        activeforeground="black",
        command=lambda: LoadFrame13()
    )
    animasyon.pack(pady=15)

    muzikal = tk.Button(
        frameLeft,
        text="MÜZİKAL",
        font=("TkHeadingFont", 15),
        bg="#0099FF",
        fg="white",
        cursor="hand2",
        activebackground="#badee2",
        activeforeground="black",
        command=lambda: LoadFrame14()
    )
    muzikal.pack(pady=15)

    yesilcam = tk.Button(
        frameRight,
        text="YEŞİLÇAM",
        font=("TkHeadingFont", 15),
        bg="#0099FF",
        fg="white",
        cursor="hand2",
        activebackground="#badee2",
        activeforeground="black",
        command=lambda: LoadFrame15()
    )
    yesilcam.pack(pady=15)

    puan = tk.Button(
        frameLeft,
        text="Yüksek Puanlılar",
        font=("TkHeadingFont", 15),
        bg="#0099FF",
        fg="white",
        cursor="hand2",
        activebackground="#badee2",
        activeforeground="black",
        command=lambda: LoadFrame16()
    )
    puan.pack(pady=15)

def list_Film_by_Tur(Tur):
    connection = sqlite3.connect(r"C:\Users\havva\PycharmProjects\VeriTabanıProje\data\havva_database.db")
    cursor = connection.cursor()

    # Sorguyu hazırla ve çalıştır
    cursor.execute('SELECT * FROM Film WHERE Tur = ?', (Tur,))
    Film = cursor.fetchall()

    connection.close()
    return Film

def list_Film(selected_category):
    films = list_Film_by_Tur(selected_category)
    clear_widgets(frameMain)

    for idx, film in enumerate(films, start=1):
        Film_frame = tk.LabelFrame(
            frameMain,
            text=f"Film {idx}",
            bg=bgColour,
            fg="white",
            font=("TkHeadingFont", 9),
            padx=20,
            pady=10
        )
        Film_frame.pack(padx=10, pady=10, fill="both")

        # Film bilgilerini daha düzenli bir şekilde göstermek için burada Label widget'larını kullanabilirsiniz
        film_info = ', '.join(str(info) for info in film)
        tk.Label(
            Film_frame,
            text=film_info,
            bg=bgColour,
            fg="white",
            font=("Shanti", 9)
        ).pack(padx=5, pady=5, fill="both")

    btn_geri = tk.Button(
        frameMain,
        text="GERİ",
        font=("TkHeadingFont", 10),
        bg="#4910f3",
        fg="black",
        cursor="hand2",
        activebackground="#badee2",
        activeforeground="black",
        command=LoadFrame1  # İlgili liste sayfasına dönme komutu
    )
    btn_geri.pack(pady=10)

def LoadFrame6():
    clear_widgets(frameMain)
    clear_widgets(frameMain6)

    connection = sqlite3.connect(r"C:\Users\havva\PycharmProjects\VeriTabanıProje\data\havva_database.db")
    cursor = connection.cursor()
    cursor.execute('SELECT * FROM Korku ')
    korku = cursor.fetchall()
    connection.close()

    for film in korku:
        film_label = tk.Label(frameMain, text=film[0])  # Film adını göster
        film_label.pack()

    btn_geri = tk.Button(
        frameMain,
        text="GERİ",
        font=("TkHeadingFont", 10),
        bg="#4910f3",
        fg="black",
        cursor="hand2",
        activebackground="#badee2",
        activeforeground="black",
        command=LoadFrame1  # Ana ekrana dönme komutu
    )
    btn_geri.pack(pady=15)


def LoadFrame7():
    clear_widgets(frameMain)


    connection = sqlite3.connect(r"C:\Users\havva\PycharmProjects\VeriTabanıProje\data\havva_database.db")
    cursor = connection.cursor()
    cursor.execute('SELECT * FROM Romantik ')
    romantik = cursor.fetchall()
    connection.close()

    for film in romantik:
        film_label = tk.Label(frameMain, text=film[0])  # Film adını göster
        film_label.pack()

    btn_geri = tk.Button(
        frameMain,
        text="GERİ",
        font=("TkHeadingFont", 10),
        bg="#4910f3",
        fg="black",
        cursor="hand2",
        activebackground="#badee2",
        activeforeground="black",
        command=LoadFrame1  # Ana ekrana dönme komutu
    )
    btn_geri.pack(pady=15)


def LoadFrame8():
    clear_widgets(frameMain)

    connection = sqlite3.connect(r"C:\Users\havva\PycharmProjects\VeriTabanıProje\data\havva_database.db")
    cursor = connection.cursor()
    cursor.execute('SELECT * FROM BilimKurgu ')
    bilimkurgu = cursor.fetchall()
    connection.close()

    for film in bilimkurgu:
        film_label = tk.Label(frameMain, text=film[0])  # Film adını göster
        film_label.pack()

    btn_geri = tk.Button(
        frameMain,
        text="GERİ",
        font=("TkHeadingFont", 10),
        bg="#4910f3",
        fg="black",
        cursor="hand2",
        activebackground="#badee2",
        activeforeground="black",
        command=LoadFrame1  # Ana ekrana dönme komutu
    )
    btn_geri.pack(pady=15)


def LoadFrame9():
    clear_widgets(frameMain)

    connection = sqlite3.connect(r"C:\Users\havva\PycharmProjects\VeriTabanıProje\data\havva_database.db")
    cursor = connection.cursor()
    cursor.execute('SELECT * FROM RomantikKomedi')
    romantikkomedi = cursor.fetchall()
    connection.close()

    for film in romantikkomedi:
        film_label = tk.Label(frameMain, text=film[0])  # Film adını göster
        film_label.pack()

    btn_geri = tk.Button(
        frameMain,
        text="GERİ",
        font=("TkHeadingFont", 10),
        bg="#4910f3",
        fg="black",
        cursor="hand2",
        activebackground="#badee2",
        activeforeground="black",
        command=LoadFrame1  # Ana ekrana dönme komutu
    )
    btn_geri.pack(pady=15)


def LoadFrame10():
    clear_widgets(frameMain)

    connection = sqlite3.connect(r"C:\Users\havva\PycharmProjects\VeriTabanıProje\data\havva_database.db")
    cursor = connection.cursor()
    cursor.execute('SELECT * FROM Komedi ')
    komedi = cursor.fetchall()
    connection.close()

    for film in komedi:
        film_label = tk.Label(frameMain, text=film[0])  # Film adını göster
        film_label.pack()

    btn_geri = tk.Button(
        frameMain,
        text="GERİ",
        font=("TkHeadingFont", 10),
        bg="#4910f3",
        fg="black",
        cursor="hand2",
        activebackground="#badee2",
        activeforeground="black",
        command=LoadFrame1  # Ana ekrana dönme komutu
    )
    btn_geri.pack(pady=115)


def LoadFrame11():
    clear_widgets(frameMain)

    connection = sqlite3.connect(r"C:\Users\havva\PycharmProjects\VeriTabanıProje\data\havva_database.db")
    cursor = connection.cursor()
    cursor.execute('SELECT * FROM Dram ')
    dram = cursor.fetchall()
    connection.close()

    for film in dram:
        film_label = tk.Label(frameMain, text=film[0])  # Film adını göster
        film_label.pack()

    btn_geri = tk.Button(
        frameMain,
        text="GERİ",
        font=("TkHeadingFont", 10),
        bg="#4910f3",
        fg="black",
        cursor="hand2",
        activebackground="#badee2",
        activeforeground="black",
        command=LoadFrame1  # Ana ekrana dönme komutu
    )
    btn_geri.pack(pady=15)


def LoadFrame12():
    clear_widgets(frameMain)

    connection = sqlite3.connect(r"C:\Users\havva\PycharmProjects\VeriTabanıProje\data\havva_database.db")
    cursor = connection.cursor()
    cursor.execute('SELECT * FROM Aksiyon')
    aksiyon = cursor.fetchall()
    connection.close()

    for film in aksiyon:
        film_label = tk.Label(frameMain, text=film[0])  # Film adını göster
        film_label.pack()

    btn_geri = tk.Button(
        frameMain,
        text="GERİ",
        font=("TkHeadingFont", 10),
        bg="#4910f3",
        fg="black",
        cursor="hand2",
        activebackground="#badee2",
        activeforeground="black",
        command=LoadFrame1  # Ana ekrana dönme komutu
    )
    btn_geri.pack(pady=15)


def LoadFrame13():
    clear_widgets(frameMain)

    connection = sqlite3.connect(r"C:\Users\havva\PycharmProjects\VeriTabanıProje\data\havva_database.db")
    cursor = connection.cursor()
    cursor.execute('SELECT * FROM Animasyon ')
    animasyon = cursor.fetchall()
    connection.close()

    for film in animasyon:
        film_label = tk.Label(frameMain, text=film[0])  # Film adını göster
        film_label.pack()

    btn_geri = tk.Button(
        frameMain,
        text="GERİ",
        font=("TkHeadingFont", 10),
        bg="#4910f3",
        fg="black",
        cursor="hand2",
        activebackground="#badee2",
        activeforeground="black",
        command=LoadFrame1  # Ana ekrana dönme komutu
    )
    btn_geri.pack(pady=15)


def LoadFrame14():
    clear_widgets(frameMain)

    connection = sqlite3.connect(r"C:\Users\havva\PycharmProjects\VeriTabanıProje\data\havva_database.db")
    cursor = connection.cursor()
    cursor.execute('SELECT * FROM Müzikal ')
    müzikal = cursor.fetchall()
    connection.close()

    for film in müzikal:
        film_label = tk.Label(frameMain, text=film[0])  # Film adını göster
        film_label.pack()

    btn_geri = tk.Button(
        frameMain,
        text="GERİ",
        font=("TkHeadingFont", 10),
        bg="#4910f3",
        fg="black",
        cursor="hand2",
        activebackground="#badee2",
        activeforeground="black",
        command=LoadFrame1  # Ana ekrana dönme komutu
    )
    btn_geri.pack(pady=15)


def LoadFrame15():
    clear_widgets(frameMain)

    connection = sqlite3.connect(r"C:\Users\havva\PycharmProjects\VeriTabanıProje\data\havva_database.db")
    cursor = connection.cursor()
    cursor.execute('SELECT * FROM Yeşilçam ')
    yeşilçam = cursor.fetchall()
    connection.close()

    for film in yeşilçam:
        film_label = tk.Label(frameMain, text=film[0])  # Film adını göster
        film_label.pack()

    btn_geri = tk.Button(
        frameMain,
        text="GERİ",
        font=("TkHeadingFont", 10),
        bg="#4910f3",
        fg="black",
        cursor="hand2",
        activebackground="#badee2",
        activeforeground="black",
        command=LoadFrame1  # Ana ekrana dönme komutu
    )
    btn_geri.pack(pady=15)

def LoadFrame16():
    clear_widgets(frameMain)

    connection = sqlite3.connect(r"C:\Users\havva\PycharmProjects\VeriTabanıProje\data\havva_database.db")
    cursor = connection.cursor()
    cursor.execute('SELECT * FROM Film WHERE Imdb>="8.5"')
    puan = cursor.fetchall()
    connection.close()

    for Film in puan:
        film_label = tk.Label(frameMain, text=Film[0])  # Film adını göster
        film_label.pack()

    btn_geri = tk.Button(
        frameMain,
        text="GERİ",
        font=("TkHeadingFont", 10),
        bg="#4910f3",
        fg="black",
        cursor="hand2",
        activebackground="#badee2",
        activeforeground="black",
        command=LoadFrame1  # Ana ekrana dönme komutu
    )
    btn_geri.pack(pady=15)

def clear_widgets(frame):
    for widget in frame.winfo_children():
        widget.destroy()

def LoadFrame2(): #filmleri değiştirme (KEŞFET BUTONU)
    clear_widgets(frameMain2)
    clear_widgets(frameMain)
    frameMain2.tkraise()

    data =havva_database()

    # logo widget
    imgLogo = ImageTk.PhotoImage(file=r"C:\Users\havva\PycharmProjects\VeriTabanıProje\assets\commerce.png")
    logoWidget = tk.Label(frameMain2, image=imgLogo, bg=bgColour)
    logoWidget.image = imgLogo
    logoWidget.pack(pady=20)

    tk.Label(
        frameMain2,
        text=data[0],
        bg=bgColour,
        fg="white",  # text colour
        font=("TkHeadingFont", 20)
    ).pack(pady=25)

    data= data[1:]
    for i in data:
        tk.Label(
            frameMain2,
            text=i,
            bg=bgColour,
            fg="white",  # text colour
            font=("Shanti", 12)
        ).pack(fill="both", padx=25)

    # button widget
    tk.Button(
        frameMain2,
        text="DEĞİŞTİR",
        font=("TkHeadingFont", 10),
        bg="#0099FF",
        fg="white",
        cursor="hand2",
        activebackground="#badee2",
        activeforeground="black",
        command=lambda:LoadFrame2()
    ).pack(pady=20)

    tk.Button(
        frameMain2,
        text="GERİ",
        font=("TkHeadingFont", 10),
        bg="#0099FF",
        fg="white",
        cursor="hand2",
        activebackground="#badee2",
        activeforeground="black",
        command=lambda:LoadFrame1()
    ).pack(pady=20)
def LoadFrame3(): #EKLE BUTONU
    clear_widgets(frameMain)
    frameMain3.tkraise()
    #film adi
    FılmAdı = tk.Label(frameMain3, text="Film Adı:")
    FılmAdı.grid(row=0, column=0, padx=5, pady=5, sticky=tk.W)
    entry_FılmAdı = tk.Entry(frameMain3)
    entry_FılmAdı.grid(row=0, column=1, padx=5, pady=5)

    #Film yönetmeni
    label_Yonetmen = tk.Label(frameMain3, text="Film Yönetmeni:")
    label_Yonetmen.grid(row=1, column=0, padx=5, pady=5, sticky=tk.W) #widget hizalama
    entry_Yonetmen = tk.Entry(frameMain3)
    entry_Yonetmen.grid(row=1, column=1, padx=5, pady=5)

    # film yazari
    label_Yazar = tk.Label(frameMain3, text="Film Yazari:")
    label_Yazar.grid(row=2, column=0, padx=5, pady=5, sticky=tk.W)
    entry_Yazar = tk.Entry(frameMain3)
    entry_Yazar.grid(row=2, column=1, padx=5, pady=5)

    # film yıldızları
    label_Yıldızlar = tk.Label(frameMain3, text="Film Yıldızları:")
    label_Yıldızlar.grid(row=3, column=0, padx=5, pady=5, sticky=tk.W)
    entry_Yıldızlar = tk.Entry(frameMain3)
    entry_Yıldızlar.grid(row=3, column=1, padx=5, pady=5)

    # film tür
    label_Tur = tk.Label(frameMain3, text="Film Türü:")
    label_Tur.grid(row=4, column=0, padx=5, pady=5, sticky=tk.W)
    entry_Tur = tk.Entry(frameMain3)
    entry_Tur.grid(row=4, column=1, padx=5, pady=5)

    # film süre
    label_Sure = tk.Label(frameMain3, text="Süre:")
    label_Sure.grid(row=5, column=0, padx=5, pady=5, sticky=tk.W)
    entry_Sure = tk.Entry(frameMain3)
    entry_Sure.grid(row=5, column=1, padx=5, pady=5)

    # film yayın yılı
    label_YayınYılı= tk.Label(frameMain3, text="Yayın Yılı:")
    label_YayınYılı.grid(row=6, column=0, padx=5, pady=5, sticky=tk.W)
    entry_YayınYılı = tk.Entry(frameMain3)
    entry_YayınYılı.grid(row=6, column=1, padx=5, pady=5)

    # film dil
    label_Dıl= tk.Label(frameMain3, text="Dil:")
    label_Dıl.grid(row=7, column=0, padx=5, pady=5, sticky=tk.W)
    entry_Dıl = tk.Entry(frameMain3)
    entry_Dıl.grid(row=7, column=1, padx=5, pady=5)

    # film ülke
    label_Ulke= tk.Label(frameMain3, text="Ülke:")
    label_Ulke.grid(row=8, column=0, padx=5, pady=5, sticky=tk.W)
    entry_Ulke = tk.Entry(frameMain3)
    entry_Ulke.grid(row=8, column=1, padx=5, pady=5)

    # film ımdb
    label_Imdb= tk.Label(frameMain3, text="Imdb:")
    label_Imdb.grid(row=9, column=0, padx=5, pady=5, sticky=tk.W)
    entry_Imdb= tk.Entry(frameMain3)
    entry_Imdb.grid(row=9, column=1, padx=5, pady=5)


    # Ekle düğmesi
    button_ekle = tk.Button(
     frameMain3,
     text="FİLM EKLE",
     font=("TkHeadingFont", 10),
     bg="#0099FF",
     fg="white",
     cursor="hand2",
     activebackground="#badee2",
     activeforeground="black",
     command=lambda:Insert(entry_FılmAdı,entry_Yonetmen,entry_Yazar,entry_Yıldızlar,entry_Tur,entry_Sure,entry_YayınYılı,entry_Dıl,entry_Ulke,entry_Imdb))
    button_ekle.grid(row=11, column=8, columnspan=2, pady=10)

    btn_geri=tk.Button(
        frameMain3,
        text="GERİ",
        font=("TkHeadingFont", 10),
        bg="#0099FF",
        fg="white",
        cursor="hand2",
        activebackground="#badee2",
        activeforeground="black",
        command=lambda: LoadFrame1())
    btn_geri.grid(row=12, column=8, columnspan=2, pady=10)
def LoadFrame4(): #Düzenle BUTONU
    clear_widgets(frameMain)
    frameMain4.tkraise()

    listObjects= Select()

    # Combobox
    combo_var = tk.StringVar()

    combo = tk.Label(frameMain4, text="Film seç")
    combo.grid(row=0, column=0, padx=5, pady=5, sticky=tk.W)
    combo = ttk.Combobox(frameMain4, values= listObjects)
    combo.grid(row=0, column=1, padx=5, pady=15)

    # Seçim değiştiğinde tetiklenecek olay işleyicisi ekleniyor
    combo.bind('<<ComboboxSelected>>', IndexChangedUpdate)


    btn_geri = tk.Button(
        frameMain4,
        text="GERİ",
        font=("TkHeadingFont", 10),
        bg="#0099FF",
        fg="white",
        cursor="hand2",
        activebackground="#badee2",
        activeforeground="black",
        command=lambda: LoadFrame1()).grid(row=13, column=0, columnspan=2, pady=10)
def LoadFrame5(): #SİL BUTONU
    clear_widgets(frameMain)
    frameMain5.tkraise()

    listObjects = Select()

    # Combobox
    combo_var = tk.StringVar()

    combo = tk.Label(frameMain5, text="Film seç")
    combo.grid(row=0, column=0, padx=5, pady=5, sticky=tk.W)
    combo = ttk.Combobox(frameMain5, values=listObjects)
    combo.grid(row=0, column=1, padx=5, pady=15)

    # Seçim değiştiğinde tetiklenecek
    combo.bind('<<ComboboxSelected>>', IndexChangedDelete)

    btn_geri = tk.Button(
        frameMain5,
        text="GERİ",
        font=("TkHeadingFont", 10),
        bg="#0099FF",
        fg="white",
        cursor="hand2",
        activebackground="#badee2",
        activeforeground="black",
        command=lambda: LoadFrame1()).grid(row=13, column=0, columnspan=2, pady=10)


root = tk.Tk() #window object
root.title("FİLM")


#frame widgets
frameMain = tk.Frame(root, width=600, height=900, bg=bgColour)
frameMain2 = tk.Frame(root, bg=bgColour)
frameMain3 = tk.Frame(root, bg=bgColour)
frameMain4 = tk.Frame(root, bg=bgColour)
frameMain5 = tk.Frame(root, bg=bgColour)
frameMain6 = tk.Frame(root, bg=bgColour)
frameMain7 = tk.Frame(root, bg=bgColour)
frameMain8 = tk.Frame(root, bg=bgColour)
frameMain9 = tk.Frame(root, bg=bgColour)
frameMain10 = tk.Frame(root, bg=bgColour)
frameMain11 = tk.Frame(root, bg=bgColour)
frameMain12 = tk.Frame(root, bg=bgColour)
frameMain13 = tk.Frame(root, bg=bgColour)
frameMain14 = tk.Frame(root, bg=bgColour)
frameMain15 = tk.Frame(root, bg=bgColour)
frameMain16 = tk.Frame(root, bg=bgColour)



for frame in (frameMain,frameMain2,frameMain3,frameMain4,frameMain5,frameMain6,frameMain7,frameMain8,frameMain9,frameMain10,frameMain11,frameMain12,frameMain13,frameMain14,frameMain15,frameMain16):
    frame.grid(row=0, column=0)

LoadFrame1()
#havva_database()
# run app
root.mainloop()