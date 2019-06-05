object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Chat Delphi'
  ClientHeight = 508
  ClientWidth = 611
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object wbchat: TWebBrowser
    Left = 0
    Top = 0
    Width = 611
    Height = 427
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 495
    ExplicitHeight = 217
    ControlData = {
      4C000000263F0000222C00000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126209000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object Panel1: TPanel
    Left = 0
    Top = 427
    Width = 611
    Height = 81
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      611
      81)
    object Memo2: TMemo
      Left = 11
      Top = 9
      Width = 481
      Height = 68
      Anchors = [akLeft, akRight]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnKeyUp = Memo2KeyUp
    end
    object Button2: TButton
      Left = 500
      Top = 38
      Width = 100
      Height = 43
      Anchors = []
      Caption = 'Enviar'
      TabOrder = 1
      OnClick = Button2Click
    end
    object BtnEnviarImagem: TBitBtn
      Left = 498
      Top = 7
      Width = 100
      Height = 25
      Anchors = []
      Caption = 'Imagem'
      TabOrder = 2
      OnClick = BtnEnviarImagemClick
    end
  end
  object htmlTemplate: TMemo
    Left = 24
    Top = 248
    Width = 479
    Height = 113
    Lines.Strings = (
      '<!DOCTYPE html>'
      '<html>'
      '<head>'
      
        '<meta name="viewport" content="width=device-width, initial-scale' +
        '=1">'
      '<style>'
      'body {'
      '  margin: 0 auto;'
      '  max-width: 800px;'
      '  padding: 0 20px;'
      '  font-size: 12px;'
      '}'
      ''
      '.zoom:hover {'
      '  padding: 30px;'
      '  width: 300px;'
      '  height: auto;'
      '  position: relative;'
      '  margin-top: -200px;'
      '}'
      ''
      '.container {'
      '  border: 2px solid #dedede;'
      '  background-color: #f1f1f1;'
      '  border-radius: 5px;'
      '  padding: 10px;'
      '  margin: 10px 0;'
      '}'
      ''
      '.darker {'
      '  border-color: #ccc;'
      '  background-color: #ddd;'
      '}'
      ''
      '.container::after {'
      '  content: " ";'
      '  clear: both;'
      '  display: block;'
      '}'
      ''
      '.container .img {'
      '  float: left;'
      '  max-width: 40px;'
      '  width: 40px;'
      '  width: 100%;'
      '  margin-right: 20px;'
      '  border-radius: 50%;'
      '}'
      ''
      '.container .img.right {'
      '  float: right;'
      '  margin-left: 20px;'
      '  margin-right:0;'
      '}'
      ''
      '.time-right {'
      '  float: right;'
      '  color: #aaa;'
      '}'
      ''
      '.time-left {'
      '  float: left;'
      '  color: #999;'
      '}'
      '</style>'
      '</head>'
      '<body>'
      ''
      ''
      '<!--inserir_mensagem!-->'
      ''
      '</body>'
      '</html>')
    TabOrder = 2
    Visible = False
    WordWrap = False
  end
  object templateImagem: TMemo
    Left = 24
    Top = 153
    Width = 479
    Height = 89
    Lines.Strings = (
      
        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIAAAACACAYAAADDPm' +
        'HLAAAACXBIWXMAAAsTAAALEwEAmpwYAAAcFUlEQVR4nO2dd3Rc1bnof/tMn9Go15' +
        'FkybJsuReMW0wxBgIxEGogJC/khYANubnc+0huCmnOujf3hdyS3FRsakgjgZRHsR' +
        '0SwBQ3iG3ckItkybY06m16O2e/P0Zy04wsWzMjOev81vJaXjpnzv7O3t/Z+9vf/v' +
        'a3QUdHR0dHR0dHR0dHR0dHR0dHR0dHR0dHR0dHR0dHR0dHR0dHR0dHR0dHR+fiRo' +
        'y3AGllxVpjhaWiWhrVOqSoA6YiKJQaToHIRmhOEBLwSolXKHhBdAGHhSYPCeThE1' +
        'l5zTx/pzrOb5I2/r4U4GO/M5QFBuYLTbtaEeJqCZcDtrE8UggCUvImUr6GEK+1Ln' +
        'bvZe1aLUUSjzt/Bwogheum9QuEKu4B7gaKh67kZlnlnNoCMaUihykVudSU51CYay' +
        'PLZsIx+E9K8Iei+ANRfMEoXX0BjrYO0Ng6QGNLP/sbexjwhU+WJoRoR5O/RMhnWz' +
        'as2TcOL5xSLloFcN20zq6o3KcJsVpIZgHYrEbtygUVyvJ5Lj4018XUSbkoYmyvqE' +
        'lJfVMv2/a1sXWPm7d2txKKxAAQiL1Sao+Zguanmzd/JjT2t8o8F50CFH70Sac5Gn' +
        'tQCPEFoFgRgssXlHPHyqlct6wau9WY1vJ9wSgbtjTx+9ePsHWvGylBEaJdg0eloq' +
        '13v7QmkFYBUszFowAf+53BFehfIyT/CuRbzAbt0zfMVO6/ZQ5lhY5xEelEh5f1f9' +
        'zHr/98kHBERVFEtyr5intR69MXi51wUShAxY1PLEbTfiphod1qUtfcOsdw782zyH' +
        'Nax1s0ALr6gzzxp/08/dJ+AqEYArFdKuoDrS8/sGe8ZTsXE1oBaj/yQ0tQWB8FHg' +
        'LEbSunym98dokoyj23Ya9JCIQl/oikqz/Mzvp22rr9dPb66Oj24fGHWXPnpcyoLs'
      
        'BsFDgsAodZYDFdeJW0dfv59uPbefmdowiE1ODRsg7tmzt3role8EPTzIRVgEk3PF' +
        'WjydjvJCysKc+Jfe8fLzcunVOW9P5ITNLrl/QFNI62B9i2+zgzakspKnDy5G+3sG' +
        'Vn47Df3LJqETOnV2IyKBgNYDIYyLEZKMszU5ClkO8QZFsVzteOfHNXC4/8dAvH2j' +
        'wIIbZpUcNd7lfvPXG+dZAJJqQCVNy4/lY0npGQfff10+W/rlkmrObhxl1MhQ6Pin' +
        'tAo6M/wu79x9myq4kPDrvRpGTx/BquuHwOBxraOdzoxmQ2Y7VbsFmt2GxWrHZLwv' +
        'INisBpM5GfZaY0z8rcChtTSkzk2JRRv4MvGOWrP3mHP77RgKKIfqnKT7RsXL3xgi' +
        'slTUw4BahYte4hifgfq8Wo/udDlxtuWVE77B5/WNLUrdI+oBIMx3ht60H+/OYBvP' +
        '74fN1ut1BWUULV5IqkjXy+5DvN1JZmcUVdFrUlZpRR1JyU8NxfDvG1n26R0aiGJr' +
        'jf/cr9T6ZEoBQxgRRAivIb1v8bUjxSlGeL/vY7N5imVeWdcYc3JDnaFaPDoxGNqr' +
        'y+9SAbNu/H6w+jCEHFpBJKK0spKMxFjHH+nwxFCKqK7FwzJ49LqqwYRtEp7Gvs5l' +
        'Pf3ER3fxDgkdYN93930AU97kwQBZCi/IYnfoKUD052ZUd/++83mlxFp6Z2MRWOdM' +
        'Zo6VWRQMOxLp7+3VbaugYQCCqrSqmpq8LuGJPX97wQQEWBjdsWFzCr/NyzkWNtHu' +
        '7++gaOt3sRyP9o2bD6yxNBCSaEApTfsO47SPHI7CkFkee+c4M513mq224b0DjUHi' +
        'MSk4TCUf6w6X1e21qPlFDmKmTarCk4suzjJrsiBHOrsvlfywvIPoeN0NUf5BNf30' +
        'B9Uy8C+dWWDWu+myExkzLuCjA05leXZUde/v4tJxtf1eCDthht/fGFOHd7Pz/+xW' +
        'bauzxYrWamz67FVVEyAd4gjsNi4JOXlXDp5JGVsasvwM1ffJHj7V6k5LPujaufyp'
      
        'CICRnX6qtYtf52CS8U5toiG35wq3mo2/eFJXtORPGH4z3ku3uaefr5rYQjMcorip' +
        'kxdxpmi2k8RU+IEILL6nL55PKCEY3EZreHW/7lRXr6QxLUVS0bHtiUOSnPZNwUoO' +
        'K6J2qlQdtlNRtsG35wq3HI4Ov1a7x/PEps0JH68ut7+cOm9xFCMH12DZOnTJowX3' +
        '0yqotsPLzKhXUEp9Lehm5u/ZcXicVkv6rKOa0b72/JoIgnMYxHobUf+aElKgybEF' +
        'T/zxevUpbPcwHQ4dHYcyKKeppptOGNA3h8IRYsnUN5ZemEb3yA/kCM3ceCXDLZgd' +
        'WU2C4oybdTlGvj1R3HrAaDWDrgWvgszZszvn4wLgpgnXbbfwvBLXd/uC72j3ctUA' +
        'Da+lX2tcQ42yzOKczDWlhI1jgaeheCLxTjb0cDLK7NSqoEs6cU0tQ6QH1zb2W2Md' +
        'vgbXjp9QyLmfnvqWLVuiUSsa26LDv815/ebrWajXT7NHYfjyLPav2mTj87G3szLW' +
        'JKKc218sjN5UmHA18wyoc//3tOdHg1pJyf6SCT0fs2U8GKtUYJPwPEf/2fK61Ws5' +
        'H+QLzbP7vx2/qC7Epj40skkUiUaCSGHNbvpI72/hD/vcGNlqSILJuJ7zy4HClREO' +
        'Ix1q7NaJukN3riLCocrgelZMEtK2qjS2aVmsIxyfsnYqhnjXz+cIx3j/SmvFli0R' +
        'jHm910tHUz0O9FGyzYYDCQk+ek1FVERVUZRmNqR8bmriC/fKeHey4vSHj9qksruX' +
        '5ZNZu2NX+o/F3XPa3wTEoFGIGMDQE116zLCZtFs81idGx98i5TYZ6dnc1Rev1ntr' +
        '4mJZv3d9F7WhzemJHQfLSFhoPHiEQiABTl2SnNj9sV7m4fPQPxiC6L1ULdzBoqJq' +
        'XW4BTAZ1eWsbgmcfBKS6ePFWueJxJVu6TdW9Xy/MPB1JWenIz1AGGz+ByQ++Dtc2' +
        'VRnp3Gztiwxgeob/GmtPFVTWXfzoO4WzrJcVp46M6F3LZyKpNKnCfvkRKa2wZ44b'
      
        'UjPPniAfbuqqevt59Z86ahKKnpkSXwm3c6qSubRI5teA9TUZzFp1bN4PE/7SuSPs' +
        'dngR+npOBzkJEeoOTDzzqMxlCzxWzI2fnsJ01Gs5ltjZFh474vGOPVve1oyQbM80' +
        'Qi2b19P+1t3axcVMkPHl5BfvbIfvvO3gD/8L3X2bavDVdlCfMXzkxpLc2vzuFz1x' +
        'QlvNbRG2DpZ36Dqmmt2bbcmgPP3xlJXcmJyYjBYTKG7gMK771plpLrtFDvjg1rfI' +
        'DdzX0pa3yAhoPHaG/r5iMfquapb3x4WOPHVPAEJQNBjUgsXm5xvp1f/9sqrrykAv' +
        'eJDpoaUxvHsfeYhwOtiQOIS/Lt3HVtHZpGeV9g4FMpLTgJGVAAKSSsEQJt9a1zDG' +
        '0DGn2B4V1/50CYjv7URVYHgyGOHj5GZYmTHzy8AuNp67Y9Po2/NUd5/WCY7Ucj7D' +
        'gaZfOhCFsbI7T2qRgNCj/98koK8+w01DcRDqfuQ9Sk5I/v9Q4zfId44La5AChSrk' +
        'lZoSOQdgWovP7xS4EZy+eVhwpz7TR0xBLeV98ykNJyGw8dQ1U1vvSpS3HY4usGUk' +
        'J9W4ydx4YbnwC+kOSAO37dbrPw8N0LiMZUmo6kthc40R1g9/HENl61K5tFM0uQsM' +
        'h107rpKS04AWlXAKnITwPcfV2dvW1AJRgd3sX3+iJ0eVJn+GlS0tbSidNh5sbLa0' +
        '7+/WB7jBO9597m1+uPO6Zuu2oqZpMBd0sHqZyTSuDVPf1JfQO3r5wa/4'
      
        '+qfDp1pSYmvQqwYq1RIu62mg3Ra5dUcbQrceU3tnlTWqzf4ycajbF4ZikmY/wVe/' +
        'zaqBp/iP6ARldAYf60IkLBMIFgajf+HO8O0NCReGi56fIaTEYFg8I9INNqqKdVAS' +
        'rsZQuB/Mvml0f9EYVAZLjKx1SNlt7UTnmHGquqLPvk35qTKN9IHOtRqR58RiiQWg' +
        'XQpOStQ76E13KyLHxorgtNk67Sj6ybkdKCzyKtCiARKwFWXlppd/cnboCWniBqCi' +
        '1/ADn4PPPg169q0JvA8DwXkZhEG5wDqsmstjHQ0O6jP4lcQyukymAdpot02wArAR' +
        'bPdtHlTfyibX2pd3iZzXGjr3sg/uxARCacdo6GrkH5LFZzSmQ7nV5vhMaOxHtGls' +
        '91Df7vIlWAhQvXmYDLnA5L0OF0JjZ4JHR5Uu/rcGZngYC9R7rH9Bwpob6pB0URaV' +
        'uO3tcSSFg3s6YU4HSYURRxVTrtgLQpQJuLKYB19pT8aE+CKRdAfyBCJJb65Bsms5' +
        'H8/FwOH+/j8PG+ESNzRuLo8W46e/0UFOWjjCb++wJo6wsxEBxeP0aDwszqfKSUuR' +
        'U3PuZK8NOUkL4hIMZ0gOlV+fa+JArQ60ufp3NybSUAP3xuNyYD5NjOXwleeWPvGc' +
        '9KB72+CL3+xONTTXkOADIm0uYPSJsCKIqoA6gszTFGk3zk3mBip1AqKCkrJL8ghz' +
        '+92ciGLU1UFZzfuteWnY28/0ELhcX5FBbnnfsHF4gvFKPHl/gDmTykAAalLl3lp0' +
        '0BpJR1AEUF2Unv8YXSuGlWwLyFM7GYzXz+P9/gwOEWipyje9339jTzzAvbsNoszF' +
        '2YXmecqkna+yIJ/UxDPQAaF18PAKIIwGZLvlvHF0pv8i2bw8qCpbORCP73t//M71' +
        '95D4NM7nHs9wR55oVt/OxXb2E0Glm4ZDZWa2r2Fo6EJ6QSSuAjKcqL150iKExX2e' +
        'mMB3ACSEPyIqJpmFufTX5BDsuuWMjuHft45uUD/GpTPYvnlFNZXkSWI27Z9w74Od'
      
        'zUSX1DG6qqkZvnZP7i2djtmUlAEVU1AhGJzXymnZJli0895WBdpoP0KYDEiQBE8k' +
        '4mpqYvFu90spx2Llu5mBPH2mg83MyW3Sdg9/AFHrvDSu30asorS9O2uTQRMVXiD0' +
        'sKss6S51S+o4tQAURcaMWQeAePJD3etaTiKIJJk12UlhfR2dZNf5+XcCg+HFhtFv' +
        'LycyguKcCYIA9BuomqGuHY8I8hyz5Yd/JiVIBBNJl484EAEIILdtGNFgkD/R7a27' +
        'rpcHfh8yZO4nXsaCsQdyKVugopcRWRPehQSjeKEEnjA9JNOocALwKC4ShZSZI0GA' +
        '2CaALNTwWapnHsaCvNjScIBuJfuhBxy7q0wEFxvp2SfDtSSjp6AnT0BWjv8dPs9u' +
        'D1+DhysBm7w8rk2klMqnYhRpMR4gIxGji5Fe50fIHBWZIgtculp5edrgcPCR0Ox5' +
        'IqgMkgiKbYFSCRtJ3o5HB9EwF/EKvFyPXLqrl2SRVXL6qk8BwJpjp6A/z13eP8Zc' +
        'cx3nq/lQN7DtPc2ML02TWUlBalpUcwGZSEC2KB0MnKuQgVYFDoUDj5XN9iNBAIp2' +
        '4qGA5H2L1jP709AxiNCp+9eTb/9PEFSQNBfWGJN6gRikE4KlElWIxmrlg8lesvm0' +
        'YsHOIHz+3i15sOsnP7fopKCpi/aAYmU2p3JluMhoSJqHzBuKdUXJwKILtAMOANUl' +
        '6am/AOp81Enz817mDPgI+d2/cSDIS5flk137xvKZNKh9tOgYiktV+l06Od3H6eDI' +
        'Ni4O6PLuHWq2fxo9/s4I2/nWDbm7tYuGQuDmfqspE4bUaMCYaYoZVITTK2Va0RSJ' +
        'sjSAhxCKCj25P0nixranbgdLb1sP2tXYSCYR75zGIe/9q1wxo/qkoOtcfY0hChqU' +
        's9Z+NDPI6g3aPRr9p58J6reOCOBfi8Aba+9Td6uvpSIrvFqAxF/wzjaOtgnKTCwZ' +
        'QUloC0KYCmyUMAnd3Jgz2z7WPvSgf6vOx6bz9mk8JT37iOz90xb1h32uXVePtIhG'
      
        'M96gVPOnwhWLx4Do+sXoEC7Nq+D5/HP2b5h+rAaBjeAzQNKoBQtUNjLigJ6XMFG+' +
        'Na297lSTrIF51jk8a5CIXC7NyxDzTJ449cw7VLJg2753ivGk84kSJTo7Z2Ev/86S' +
        'uIxlR2bt9LJDK29YzCwTpI9C0M9QDCKC++HqDMTSMQamrpk8m+OotJIdt2Yb2Apm' +
        'ns3L6fUDDMt+5fypWXVAy7p7FL5WDb8JwDY6VuagV3rlqA3x9i1479aGPwZZTkxG' +
        'dIdsuZTRFTNT5o6gXoa3n5AfcYxB2RtCnAYH7cdzy+oLF9hGGgOPfCFluON7kZ6P' +
        'Pwsaunce9HZw+73uHRaOxM33LzdVfOYdmCKnq7+2k93n5BzzAqCvnOuL/fYTlzCD' +
        'jQ2IM3EEFKNqcznVy6YwJfBzjYkLyCKgrOP9V7LBqj4WAzDpuJb9y3ZNiY7w9L9r' +
        'emNz+zEHDHqkWYTQaOfHAUNZEn5xyU51tRhMBqEhjPaokte4c+epnWrCFpVQAxKP' +
        'wHIyhAodOM4zwPeWg4dIxIJMrn7piXcI5/sH14zoF0kJdj55rlMwiFIjQ1Hj/v30' +
        '8qjit/vmN4M2zZE1cA7WJWgJZA206g98ChVhkZweVXXTT6gMtYTOXY0VYKc23cd/' +
        'Pwrr/XryWNsEkHq66ahd1m5uiREyfD0UeDzWygOCeuvPmOM7uwAV+YLXvcEmhp37' +
        'imPpXynk16h4DNa2MC+ZtQJCZ2f5B8f11NiRPDKH3t3Z29qKrKzVdOObnn73QaOj' +
        'N7wpvdZmHh7EnEojG6z8M3UFuWddKrfHYP8NLbR4mpmpCIX6Y7nWza9wYKTfwcYN' +
        'vOpqT3WEwKNSVZSa+fTru7C4APL6kadi0UlUk3WqST+TPjQaOd7aNz2JmNClMG3z' +
        'fHJoZFLf/+9SPx/xi0n6dOysSkXQFObLr/b0D9/kOteLzJN4HUuc7dC0hN0tXeQ7' +
        'bDzJJZpcOuJ9t8km5mTSvDZDLQ4e4aVcKpaS7nye3qZblnekOb3R7e+6AD4F33S2'
      
        'vSNv8fIgP5AYQUsE6Tkj+/nXw4s5oNTC8fOe7BM+AjGo2xbE4ZxrPNZqA7g2P/6Z' +
        'hNRmqrigiFIvg8Ix8a5rAYmVoWf09FQFnOme/x2B/ioehSiPXpkfZMMpIhJBqzPq' +
        'EooueNbYfwB5IHZda5ssmyJZ8ReL3xzZSuosTDxWj8++kiPydu0Qd8I291mzc592' +
        'RPV5ytYDrNBdze4+e5Vw9JkCfy7Dm/SJ+0p8iIAnS8eo9f0+R/hcJR/rolea+mKI' +
        'JLJucnXXMPBePKU5yXeNYQSlNwyWjIyY7LFBxhG3l5gR1X3qlVxMmFZyr7uj/six' +
        't/ku9lIj8QZDBLWFCGfuJQrF959e367KuWTiM7yXJqcY6FGa5s6luHryLGBqeSjz' +
        '77Hq/uOHbGNSnBExq/o/qOHo8bgNEk012HxcjCKac2mBQ5FZzWU5p+osPLs6/US6' +
        'BTyfJn7FiZjClA78aHPPYb1n89GIr88Lev7OT+j1+W9N6Zk3Lo8obpPitriM1+Sm' +
        'l2H+pMm6xjwZYg+kkRgqXTCjCftuZbU3Rm1X/78e2EozEBfCVTOQIhw5lCW/zun1' +
        'U5K1Zv23V09pWLpzKtpiThfQJYNq2QNw504Dtt+1jV5HLKyouRcmIeyikU5eTW9J' +
        'N/AxbV5pGXdWp7eXmu4Yy9iq+/d4JN25pB8E7rIvezbMiMvEPyZZShZNGuklzxzX' +
        '9ahdmYXAcDoRivH+gkFMmscyeVzKvOPWn1A5gMsLzWjNkYr3pfMMo1//CC1tLhkw' +
        'K5INPJojOeLt5z5OXW3LqbCz2+4GKvL3TSiZIIk1GhNNeKuy+YsU0kqWRWZTZ15W' +
        'fujZxeZiRv0PMnJXzh+2/y7oEOgRT/t3Xj6ucyLWNms4UPYlEDXzSbjPVv7jjCjj' +
        '3JPYQQj5i5alYxzhGmhxMNAVxSk8eMipwz/l7sVKjIO/XN/ebPB/nTm43xrj/Yuj' +
        'azUsYZFwVo2PhQOBaJ3mQ0GoI/f2E77vb+Ee+'
      
        '3W42smFVCYXb6N2qOFaNBYVld4TDXts0kmFV+yj7Y29DN1x7boiFFD5q4m81r0xe' +
        '8MALjcmIIgKfh5T5n7U31sZh61+4PTrBobjU2a/LoIKNBUFXsQEro8aYwk3gKyXO' +
        'YuXJmEQXOMxVVEXBJlQn74ObPZreHj33lZdUfjAohtDtaN67ZNR7ywjgqAIDnyEv' +
        '1BdNv9viDkev2H2plyfzJmE3Ju3oBFOdYKci20O2NEL2AIIx0IIRgWpmTJVMLsJg' +
        'MZ12DeZUmCgbH/a6+ALd/+SW1ozdgkJL7WjeueX48ZB5iXBUAoP/wi9sLZ97i6Pc' +
        'Glx9s7GDhnEkjKgFAltVITUl8ObXXlzi5QqYozDazfHoRVUWOhDuKZ7mMlOXEq7m' +
        'rL8DHv7ZBbXJ7DAL51daNa36UaXnPZoKcwSVFza3PPBEOR+91Fefw8H3Xkp87uiA' +
        'RfzjGoVYvzV3+lGYaPxf5WRamlzspy7clrcTpZUYm5ccbv9nt4a5HXom1dvmM+tG' +
        'xCZGi5qNPfzcci30pL9vOF+67BleSHUWJCEVUGtp9HO/yE0iT30BRBGV5NqaUZFG' +
        'ck9wgFQLmlJsoHVzp29fYzSe+tjHW5w0Z40fGrn50IjQ+TCgFiFN905P/HFXV71v' +
        'MRj5921KWXlJz7h+dhgS6BsK09PjpGAjjD43NuDYaFIqyzZTl2agssJ/MPZz8fph' +
        'XYaIgS4kfH//qQR752RYtGtWQQqzWj48fBRU3rr/VIJRfx1TNesXiqXzi5kXntAu' +
        'SEQirdHnDeAJRvMEo3mCMcFQlpspT8fwiHqJtNggcViNOmwmnzUhBloW8LNOos4X' +
        'k2ARzK0zYzAJfMMqXf/yO/H+bGwRS9Ajkp1o2rt54QS+RRiakAgBMuuGpGqOJl8K' +
        'R2MyyohzuuX0pdUnWDi4UTcaVwKAoY66IqgIDU0uMKALe3NXCl370drS102cCtsi' +
        'Y8W73q/em9tCBFDFhFQDiR8xGjLb/UFX5eUAsWzCZu268NOlS8njgtApmuozk2BT'
      
        'auv18a/1WbcOWZgVQge+VdshvDW6SmZBMaAUYovL69YuMFsNTkag622Y1c+1lM7h' +
        '6+XScjvHzDJoMgilFBirzDXQPBHn8j/t48sX9ajiiGoCtKNrnWl9+YM+4CThKLgo' +
        'FAOBjvzO4Av1rDIr4d02VOWaTkRVLp3HdFTPJy8ncucIWo6C60EBFngF3l5fH/rB' +
        'X/mrTQS0W0wxAp5R81b3E/Qxr104ML9U5uHgUYJDCjz7pNMe0BwwG8WVN1QqEEMy' +
        'sLeVDl9ZyyaxKLGnI8iWAPIeCK1fBYVLZtLWZ3/7lUOTdA+1DifzcQvA9zSAfd7+' +
        '0ZuSo0AnGRacAQ7huWmdXVO7TEGsEzASwmI1y1jSXmD6lhOlTSikvyb3gfH+KgFy' +
        '7Qp5DMNDbz876Nt7e3Rp9+323Eo2pQx7U94F1poDpmebNn0ntkSIZ4qJVgFNI4fr' +
        'Ik/MF6j0I8QmgeOiKw27WqssLKCnKVkqLsiktysHpsGKzmLBYTVjNRqSUqGoMocV' +
        'AUwkGQnT1emjtHJCHmvvC9U09Bn8wemqVSuIWQv4K+EWmgzfSwd+BApzG2rWKa2f' +
        'ZfFTlaqS8WgguB8ZmIAh8wFtIXkPRXmu9tH3fxTK+j4a/LwU4mxVrjZW2sioplTq' +
        'paHUgpoEokOAUyGziKVgl4JUIbzwbl+wScBi0Q4owHz5uzzrG83devDFpOjo6Ojo' +
        '6Ojo6Ojo6Ojo6Ojo6Ojo6Ojo6Ojo6Ojo6Ojo6Ojo6Ojo6Ojo6On/n/H/dsvpwL6N' +
        'c3gAAAABJRU5ErkJggg==')
    TabOrder = 3
    Visible = False
    WordWrap = False
  end
  object tmr: TTimer
    Enabled = False
    Interval = 50
    OnTimer = tmrTimer
    Left = 432
    Top = 72
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 432
    Top = 128
  end
end
