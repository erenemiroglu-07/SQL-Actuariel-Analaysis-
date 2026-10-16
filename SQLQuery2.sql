SELECT Sigortalilar.AdSoyad , Sigortalilar.RiskSkoru , Hasarlar.TazminatTutu , Sigortalilar.Sehir ,
CASE
WHEN RiskSkoru < 30 THEN 'DüşükRisk'
WHEN RiskSkoru BETWEEN 30 AND 70 THEN 'Ortalama'
ELSE 'YüksekRisk'
END AS RiskKategorisi
FROM Sigortalilar
LEFT JOIN Hasarlar ON Sigortalilar.SigortaliID = Hasarlar.SigortaliID
WHERE Sigortalilar.Sehir IN ('Ankara' , 'İstanbul') ;





