VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   9630
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   20775
   LinkTopic       =   "Form1"
   ScaleHeight     =   9630
   ScaleWidth      =   20775
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton btn_favoritos 
      Caption         =   "Libros Favoritos"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   1080
      TabIndex        =   10
      Top             =   7800
      Width           =   2415
   End
   Begin VB.CommandButton btn_generos_favoritos 
      Caption         =   "Generos Favoritos"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   1080
      TabIndex        =   9
      Top             =   6360
      Width           =   2415
   End
   Begin VB.CommandButton btn_modificar 
      Caption         =   "Modificar"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   10200
      TabIndex        =   8
      Top             =   8040
      Width           =   3495
   End
   Begin VB.CommandButton btn_eliminar 
      Caption         =   "Eliminar"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   14280
      TabIndex        =   7
      Top             =   8040
      Width           =   3495
   End
   Begin VB.CommandButton btn_agregar 
      Caption         =   "Agregar"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   6120
      TabIndex        =   6
      Top             =   8040
      Width           =   3495
   End
   Begin MSComctlLib.ListView list_libros 
      Height          =   7095
      Left            =   4440
      TabIndex        =   5
      Top             =   360
      Width           =   14895
      _ExtentX        =   26273
      _ExtentY        =   12515
      View            =   3
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      FullRowSelect   =   -1  'True
      GridLines       =   -1  'True
      _Version        =   393217
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   1
      NumItems        =   0
   End
   Begin VB.CommandButton btn_no_gustar 
      Caption         =   "No me gustaron"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   1080
      TabIndex        =   4
      Top             =   4800
      Width           =   2415
   End
   Begin VB.Frame Contenedor 
      Height          =   9255
      Left            =   600
      TabIndex        =   0
      Top             =   240
      Width           =   3375
      Begin VB.CommandButton btn_quiero 
         Caption         =   "Quiero leer"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   975
         Left            =   480
         TabIndex        =   3
         Top             =   3120
         Width           =   2415
      End
      Begin VB.CommandButton btn_leidos 
         Caption         =   "Ya leiste"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   975
         Left            =   480
         TabIndex        =   2
         Top             =   1800
         Width           =   2415
      End
      Begin VB.CommandButton btn_catalogo 
         Caption         =   "Catalogo Mega"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   975
         Left            =   480
         TabIndex        =   1
         Top             =   480
         Width           =   2415
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub CargarLibros(filtroSQL As String)
    Dim rs As ADODB.Recordset
    Dim sql As String
    
    sql = "SELECT L.LibroID, L.Titulo, L.Autor, G.Nombre As Genero, L.Calificacion, L.Prestado, L.PrestadoA " & _
        "FROM Libros L INNER JOIN Generos G ON L.GeneroID=G.GeneroID"
    
    If filtroSQL <> "" Then
        sql = sql & " WHERE " & filtroSQL
    End If
    
    Set rs = New ADODB.Recordset
    rs.Open sql, conn, adOpenStatic, adLockReadOnly
    
    list_libros.ListItems.Clear
    
    If Not rs.EOF Then
        Dim item As ListItem
        Do Until rs.EOF
            
            Set item = list_libros.ListItems.Add(, , rs!titulo)
            item.SubItems(1) = rs!autor
            item.SubItems(2) = rs!Genero
            item.SubItems(3) = IIf(IsNull(rs!Calificacion), "", rs!Calificacion)
            If rs!prestado = True Then
                item.SubItems(4) = rs!prestadoA
            Else
                item.SubItems(4) = ""
            End If
            
            item.Tag = rs!libroID
            
            rs.MoveNext
        
        Loop
    End If
    
    rs.Close: Set rs = Nothing
    
    
End Sub

Private Sub btn_agregar_Click()
    frmLibro.EditandoID = 0
    frmLibro.Show vbModal
End Sub

Private Sub btn_catalogo_Click()
    CargarLibros ""
End Sub
Private Sub btn_modificar_Click()
    ' Verificar que hay un elemento seleccionado
    If list_libros.SelectedItem Is Nothing Then
        MsgBox "Selecciona el libro a modificar", vbExclamation, "Selección requerida"
        Exit Sub
    End If
    
    ' Obtener el ID del libro seleccionado y abrir el formulario en modo edición
    frmLibro.EditandoID = list_libros.SelectedItem.Tag
    frmLibro.Show vbModal
    
    ' Recargar la lista después de cerrar el formulario
    CargarLibros ""
End Sub

Private Sub btn_eliminar_Click()
    ' Verificar que hay un elemento seleccionado
    If list_libros.SelectedItem Is Nothing Then
        MsgBox "Selecciona el libro a eliminar", vbExclamation, "Selección requerida"
        Exit Sub
    End If
    
    Dim item As ListItem
    Set item = list_libros.SelectedItem
    
    ' Obtener el título para mostrarlo en la confirmación
    Dim titulo As String
    titulo = item.Text
    
    ' Confirmar eliminación
    Dim resp As Integer
    resp = MsgBox("¿Estás seguro de eliminar el libro '" & titulo & "'?", _
                  vbYesNo + vbQuestion, "Confirmar eliminación")
    
    If resp = vbYes Then
        Dim libroID As Long
        libroID = item.Tag
        
        On Error GoTo ErrorDelete
        
        ' Ejecutar la eliminación
        conn.Execute "DELETE FROM Libros WHERE LibroID = " & CStr(libroID)
        
        MsgBox "Libro eliminado exitosamente.", vbInformation, "Eliminación completada"
        
        ' Recargar la lista para reflejar los cambios
        CargarLibros ""
    End If
    
    Exit Sub
    
ErrorDelete:
    MsgBox "Error al eliminar el libro: " & Err.Description, vbCritical, "Error"
End Sub

Private Sub btn_favoritos_Click()
    CargarLibros "L.Recomendado = 1"
End Sub

Private Sub btn_generos_favoritos_Click()
    CargarLibros "G.EsFavorito = 1"
End Sub

Private Sub btn_leidos_Click()
    CargarLibros "L.Leido =1"
End Sub


Private Sub btn_no_gustar_Click()
    CargarLibros "L.Leido =1 AND L.Calificacion <=4"
End Sub

Private Sub btn_quiero_Click()
    CargarLibros "L.PorLeer =1"
End Sub

Private Sub Form_Load()
    Set conn = New ADODB.Connection
    conn.CursorLocation = adUseClient
    
    Dim connString As String
    connString = "Provider=SQLOLEDB.1;Data Source=PC;Initial Catalog=MegaLibros;Integrated Security=SSPI;"
        
    conn.Open connString
    
    With list_libros
        .View = lvwReport
        .GridLines = True
        .FullRowSelect = True
        .ColumnHeaders.Clear
        .ColumnHeaders.Add , , "Titulo", 2000
        .ColumnHeaders.Add , , "Autor", 1500
        .ColumnHeaders.Add , , "Genero", 1000
        .ColumnHeaders.Add , , "Calificacion", 1300
        .ColumnHeaders.Add , , "Prestado a", 1500
    End With
End Sub

