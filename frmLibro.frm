VERSION 5.00
Begin VB.Form frmLibro 
   Caption         =   "Agrega Un Libro"
   ClientHeight    =   13035
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   10350
   LinkTopic       =   "Form2"
   ScaleHeight     =   13035
   ScaleWidth      =   10350
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdCancelar 
      Caption         =   "Cancelar"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   5520
      TabIndex        =   15
      Top             =   11640
      Width           =   3735
   End
   Begin VB.CommandButton cmdGuardar 
      Caption         =   "Guardar"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   1200
      TabIndex        =   14
      Top             =   11640
      Width           =   3735
   End
   Begin VB.TextBox prestadoA 
      Height          =   735
      Left            =   2400
      TabIndex        =   12
      Top             =   10080
      Width           =   5895
   End
   Begin VB.CheckBox chkPrestado 
      Caption         =   "Prestado Actualmente"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   675
      Left            =   2160
      TabIndex        =   11
      Top             =   9000
      Width           =   6255
   End
   Begin VB.TextBox txtTitulo 
      Height          =   1095
      Left            =   2400
      TabIndex        =   10
      Top             =   480
      Width           =   6495
   End
   Begin VB.CheckBox chkRecomendado 
      Caption         =   "Recomendado"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   675
      Left            =   2160
      TabIndex        =   9
      Top             =   7920
      Width           =   6255
   End
   Begin VB.CheckBox chkPorLeer 
      Caption         =   "Quiero Leer"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   675
      Left            =   2160
      TabIndex        =   8
      Top             =   6840
      Width           =   6255
   End
   Begin VB.CheckBox chkLeido 
      Caption         =   "Ya leido"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   675
      Left            =   2160
      TabIndex        =   7
      Top             =   5760
      Width           =   6255
   End
   Begin VB.TextBox txtCalificacion 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   2400
      TabIndex        =   5
      Top             =   4560
      Width           =   735
   End
   Begin VB.ComboBox cboGenero 
      Height          =   315
      Left            =   2400
      TabIndex        =   3
      Top             =   3360
      Width           =   6495
   End
   Begin VB.TextBox txtAutor 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   2400
      TabIndex        =   2
      Top             =   1920
      Width           =   6495
   End
   Begin VB.Label Label5 
      Caption         =   "Prestado a"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   480
      TabIndex        =   13
      Top             =   10200
      Width           =   1575
   End
   Begin VB.Label Label4 
      Caption         =   "Calificacion"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   360
      TabIndex        =   6
      Top             =   4560
      Width           =   1695
   End
   Begin VB.Label Label3 
      Caption         =   "Genero"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   960
      TabIndex        =   4
      Top             =   3360
      Width           =   1095
   End
   Begin VB.Label Label2 
      Caption         =   "Autor"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   1080
      TabIndex        =   1
      Top             =   2160
      Width           =   975
   End
   Begin VB.Label Label1 
      Caption         =   "Titulo"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   1080
      TabIndex        =   0
      Top             =   840
      Width           =   975
   End
End
Attribute VB_Name = "frmLibro"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public EditandoID As Integer

Private Sub chkLeido_Click()
    If chkLeido.Value = 1 Then
        chkPorLeer.Value = 0
        txtCalificacion.Enabled = True
    Else
        txtCalificacion.Enabled = False
    End If
End Sub
Private Sub chkPorLeer_Click()
    If chkPorLeer.Value = 1 Then
        chkLeido.Value = 0
    End If
End Sub

Private Sub chkPrestado_Click()
    If chkPrestado.Value = 1 Then
        prestadoA.Enabled = False
    Else
        prestadoA.Enabled = True
        prestadoA.Text = ""
       
    End If
End Sub

Private Sub cmdCancelar_Click()
    Unload Me
End Sub

Private Sub cmdGuardar_Click()
    ' Validar campos obligatorios
    If Trim(txtTitulo.Text) = "" Or Trim(txtAutor.Text) = "" Then
        MsgBox "El título y el autor son obligatorios", vbExclamation, "Datos Incompletos"
        Exit Sub
    End If
    
    If cboGenero.ListIndex = -1 Then
        MsgBox "Seleccione un género", vbExclamation, "Datos Incompletos"
        Exit Sub
    End If
    
    If chkLeido.Value = 1 And Trim(txtCalificacion.Text) = "" Then
        MsgBox "Por favor ingrese una calificación (1-5)", vbInformation
        Exit Sub
    End If
    
    ' Validar calificación (1-5)
    Dim calif As Variant
    If Trim(txtCalificacion.Text) <> "" Then
        calif = Val(txtCalificacion.Text)
        If (calif < 1 Or calif > 10) Then
            MsgBox "Calificación debe ser un número del 1 al 10.", vbExclamation
            Exit Sub
        End If
    Else
        calif = "NULL"
    End If
    
    ' Preparar datos para insertar/actualizar
    Dim titulo As String, autor As String, generoID As Long
    titulo = Replace(txtTitulo.Text, "'", "''")  ' Escapar comillas simples
    autor = Replace(txtAutor.Text, "'", "''")    ' Escapar comillas simples
    generoID = cboGenero.ItemData(cboGenero.ListIndex)
    
    ' Obtener valores de checkboxes
    Dim leido As Integer, porLeer As Integer, recom As Integer, prestado As Integer
    leido = IIf(chkLeido.Value = 1, 1, 0)
    porLeer = IIf(chkPorLeer.Value = 1, 1, 0)
    recom = IIf(chkRecomendado.Value = 1, 1, 0)
    prestado = IIf(chkPrestado.Value = 1, 1, 0)
    
    ' Manejar datos de préstamo
    Dim prestadoATexto As String, FechaPrestamo As String
    If prestado = 1 Then
        prestadoATexto = Replace(prestadoA.Text, "'", "''")  ' Escapar comillas simples
        FechaPrestamo = Format$(Now, "yyyy-mm-dd")
    Else
        prestadoATexto = ""
        FechaPrestamo = ""
    End If
    
    On Error GoTo ErrSave
    
    Dim sqlQuery As String
    
    If EditandoID = 0 Then
        ' MODO AGREGAR
        sqlQuery = "INSERT INTO Libros (Titulo, Autor, GeneroID, Leido, PorLeer, Recomendado, Prestado, PrestadoA, FechaPrestamo, Calificacion) VALUES (" & _
            "'" & titulo & "', '" & autor & "', " & CStr(generoID) & ", " & _
            CStr(leido) & ", " & CStr(porLeer) & ", " & CStr(recom) & ", " & CStr(prestado) & ", "
        
        If prestado = 1 Then
            sqlQuery = sqlQuery & "'" & prestadoATexto & "', '" & FechaPrestamo & "', "
        Else
            sqlQuery = sqlQuery & "NULL, NULL, "
        End If
        
        If calif = "NULL" Then
            sqlQuery = sqlQuery & "NULL)"
        Else
            sqlQuery = sqlQuery & CStr(calif) & ")"
        End If
        
        conn.Execute sqlQuery
        MsgBox "Libro agregado exitosamente", vbInformation
        
    Else
        ' MODO EDITAR
        sqlQuery = "UPDATE Libros SET " & _
            "Titulo = '" & titulo & "', " & _
            "Autor = '" & autor & "', " & _
            "GeneroID = " & CStr(generoID) & ", " & _
            "Leido = " & CStr(leido) & ", " & _
            "PorLeer = " & CStr(porLeer) & ", " & _
            "Recomendado = " & CStr(recom) & ", " & _
            "Prestado = " & CStr(prestado) & ", "
            
        If prestado = 1 Then
            sqlQuery = sqlQuery & "PrestadoA = '" & prestadoATexto & "', FechaPrestamo = '" & FechaPrestamo & "', "
        Else
            sqlQuery = sqlQuery & "PrestadoA = NULL, FechaPrestamo = NULL, "
        End If
        
        If calif = "NULL" Then
            sqlQuery = sqlQuery & "Calificacion = NULL "
        Else
            sqlQuery = sqlQuery & "Calificacion = " & CStr(calif) & " "
        End If
        
        sqlQuery = sqlQuery & "WHERE LibroID = " & EditandoID
        
        conn.Execute sqlQuery
        MsgBox "Libro editado exitosamente", vbInformation
        
    End If
    
    ' Cerrar el formulario después de guardar exitosamente
    Unload Me
    Exit Sub
    
ErrSave:
    MsgBox "Ocurrió un error al guardar: " & Err.Description, vbCritical
    
End Sub

Private Sub Form_Load()
    Dim rsG As ADODB.Recordset
    Set rsG = New ADODB.Recordset
    rsG.Open "SELECT GeneroID, Nombre FROM Generos ORDER BY Nombre", conn, adOpenStatic, adLockReadOnly
    cboGenero.Clear
    Do Until rsG.EOF
        cboGenero.AddItem rsG!Nombre
        cboGenero.ItemData(cboGenero.NewIndex) = rsG!generoID
        rsG.MoveNext
    Loop
    
    rsG.Close: Set rsG = Nothing
    
    If EditandoID = 0 Then
        ' Modo Agregar
        txtTitulo.Text = ""
        txtAutor.Text = ""  ' Corregido: agregué .Text
        cboGenero.ListIndex = -1
        txtCalificacion.Text = ""  ' Corregido: agregué .Text
        chkLeido.Value = 0
        chkPorLeer.Value = 0
        chkRecomendado.Value = 0
        chkPrestado.Value = 0
        prestadoA.Enabled = False
        txtCalificacion.Enabled = False  ' Deshabilitado por defecto
        Me.Caption = "Agregar Libro"
    Else
        ' Modo Editar
        Me.Caption = "Editar Libro"
        
        Dim rs As ADODB.Recordset
        Set rs = New ADODB.Recordset
        rs.Open "SELECT * FROM Libros WHERE LibroID = " & EditandoID, conn, adOpenStatic, adLockReadOnly
        
        If Not rs.EOF Then
            ' Llenar los campos básicos
            txtTitulo.Text = rs!titulo
            txtAutor.Text = rs!autor
            
            ' Buscar y seleccionar el género correcto en el ComboBox
            Dim i As Integer
            For i = 0 To cboGenero.ListCount - 1
                If cboGenero.ItemData(i) = rs!generoID Then
                    cboGenero.ListIndex = i
                    Exit For
                End If
            Next i
            
            ' Manejar checkbox Leído
            If IsNull(rs!leido) Then
                chkLeido.Value = 0
            Else
                chkLeido.Value = IIf(rs!leido, 1, 0)
            End If
            
            ' Manejar checkbox Por Leer
            If IsNull(rs!porLeer) Then
                chkPorLeer.Value = 0
            Else
                chkPorLeer.Value = IIf(rs!porLeer, 1, 0)
            End If
            
            ' Manejar checkbox Recomendado
            If IsNull(rs!Recomendado) Then
                chkRecomendado.Value = 0
            Else
                chkRecomendado.Value = IIf(rs!Recomendado, 1, 0)
            End If
            
            ' Manejar checkbox Prestado
            If IsNull(rs!prestado) Then
                chkPrestado.Value = 0
                prestadoA.Enabled = False
            Else
                chkPrestado.Value = IIf(rs!prestado, 1, 0)
                ' Si está prestado, habilitar y llenar el campo
                If rs!prestado = True Then
                    If Not IsNull(rs!prestadoA) Then
                        prestadoA.Text = rs!prestadoA
                    End If
                    prestadoA.Enabled = True
                Else
                    prestadoA.Enabled = False
                End If
            End If
            
            ' Manejar calificación
            If Not IsNull(rs!Calificacion) Then
                txtCalificacion.Text = rs!Calificacion
                txtCalificacion.Enabled = True
            Else
                txtCalificacion.Text = ""
                ' Habilitar solo si está marcado como leído
                txtCalificacion.Enabled = (chkLeido.Value = 1)
            End If
            
        End If
        
        rs.Close: Set rs = Nothing
    End If
    
End Sub

