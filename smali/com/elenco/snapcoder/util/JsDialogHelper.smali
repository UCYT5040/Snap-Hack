.class public Lcom/elenco/snapcoder/util/JsDialogHelper;
.super Ljava/lang/Object;
.source "JsDialogHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/elenco/snapcoder/util/JsDialogHelper$PositiveListener;,
        Lcom/elenco/snapcoder/util/JsDialogHelper$CancelListener;
    }
.end annotation


# static fields
.field public static final ALERT:I = 0x1

.field public static final CONFIRM:I = 0x2

.field public static final PROMPT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "JsDialogHelper"


# instance fields
.field private final mDefaultValue:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mMessage:Ljava/lang/String;

.field private final mResult:Landroid/webkit/JsResult;

.field private final mType:I

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/webkit/JsResult;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Landroid/webkit/JsResult;
    .param p2, "type"    # I
    .param p3, "defaultValue"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "url"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    instance-of v0, p1, Landroid/webkit/JsPromptResult;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "JsDialogHelper PROMPT requires JsPromptResult"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iput-object p1, p0, Lcom/elenco/snapcoder/util/JsDialogHelper;->mResult:Landroid/webkit/JsResult;

    .line 53
    iput-object p3, p0, Lcom/elenco/snapcoder/util/JsDialogHelper;->mDefaultValue:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcom/elenco/snapcoder/util/JsDialogHelper;->mMessage:Ljava/lang/String;

    .line 55
    iput p2, p0, Lcom/elenco/snapcoder/util/JsDialogHelper;->mType:I

    .line 56
    iput-object p5, p0, Lcom/elenco/snapcoder/util/JsDialogHelper;->mUrl:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/webkit/JsResult;Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/webkit/JsResult;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/elenco/snapcoder/util/JsDialogHelper;->mResult:Landroid/webkit/JsResult;

    .line 61
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/elenco/snapcoder/util/JsDialogHelper;->mDefaultValue:Ljava/lang/String;

    .line 62
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/elenco/snapcoder/util/JsDialogHelper;->mMessage:Ljava/lang/String;

    .line 63
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/elenco/snapcoder/util/JsDialogHelper;->mType:I

    .line 64
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/elenco/snapcoder/util/JsDialogHelper;->mUrl:Ljava/lang/String;

    .line 65
    return-void
.end method

.method static synthetic access$100(Lcom/elenco/snapcoder/util/JsDialogHelper;)Landroid/webkit/JsResult;
    .locals 1
    .param p0, "x0"    # Lcom/elenco/snapcoder/util/JsDialogHelper;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/elenco/snapcoder/util/JsDialogHelper;->mResult:Landroid/webkit/JsResult;

    return-object v0
.end method

.method private static canShowAlertDialog(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    instance-of v0, p0, Landroid/app/Activity;

    return v0
.end method


# virtual methods
.method public invokeCallback(Lcom/elenco/snapcoder/util/WebChromeClient;Landroid/webkit/WebView;)Z
    .locals 6
    .param p1, "client"    # Lcom/elenco/snapcoder/util/WebChromeClient;
    .param p2, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 68
    iget v0, p0, Lcom/elenco/snapcoder/util/JsDialogHelper;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/elenco/snapcoder/util/JsDialogHelper;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :pswitch_0
    iget-object v0, p0, Lcom/elenco/snapcoder/util/JsDialogHelper;->mUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/elenco/snapcoder/util/JsDialogHelper;->mMessage:Ljava/lang/String;

    iget-object v2, p0, Lcom/elenco/snapcoder/util/JsDialogHelper;->mResult:Landroid/webkit/JsResult;

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/elenco/snapcoder/util/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    .line 74
    :goto_0
    return v0

    .line 72
    :pswitch_1
    iget-object v0, p0, Lcom/elenco/snapcoder/util/JsDialogHelper;->mUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/elenco/snapcoder/util/JsDialogHelper;->mMessage:Ljava/lang/String;

    iget-object v2, p0, Lcom/elenco/snapcoder/util/JsDialogHelper;->mResult:Landroid/webkit/JsResult;

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/elenco/snapcoder/util/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    goto :goto_0

    .line 74
    :pswitch_2
    iget-object v2, p0, Lcom/elenco/snapcoder/util/JsDialogHelper;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/elenco/snapcoder/util/JsDialogHelper;->mMessage:Ljava/lang/String;

    iget-object v4, p0, Lcom/elenco/snapcoder/util/JsDialogHelper;->mDefaultValue:Ljava/lang/String;

    iget-object v5, p0, Lcom/elenco/snapcoder/util/JsDialogHelper;->mResult:Landroid/webkit/JsResult;

    check-cast v5, Landroid/webkit/JsPromptResult;

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/elenco/snapcoder/util/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public showDialog(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v7, 0x104000a

    const/4 v6, 0x0

    .line 81
    invoke-static {p1}, Lcom/elenco/snapcoder/util/JsDialogHelper;->canShowAlertDialog(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 82
    const-string v4, "JsDialogHelper"

    const-string v5, "Cannot create a dialog, the WebView context is not an Activity"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v4, p0, Lcom/elenco/snapcoder/util/JsDialogHelper;->mResult:Landroid/webkit/JsResult;

    invoke-virtual {v4}, Landroid/webkit/JsResult;->cancel()V

    .line 107
    :goto_0
    return-void

    .line 87
    :cond_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 88
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    new-instance v4, Lcom/elenco/snapcoder/util/JsDialogHelper$CancelListener;

    invoke-direct {v4, p0, v6}, Lcom/elenco/snapcoder/util/JsDialogHelper$CancelListener;-><init>(Lcom/elenco/snapcoder/util/JsDialogHelper;Lcom/elenco/snapcoder/util/JsDialogHelper$1;)V

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 89
    iget v4, p0, Lcom/elenco/snapcoder/util/JsDialogHelper;->mType:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    .line 90
    const/4 v2, 0x0

    .line 91
    .local v2, "edit":Landroid/widget/EditText;
    iget-object v4, p0, Lcom/elenco/snapcoder/util/JsDialogHelper;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 92
    new-instance v4, Lcom/elenco/snapcoder/util/JsDialogHelper$PositiveListener;

    invoke-direct {v4, p0, v6}, Lcom/elenco/snapcoder/util/JsDialogHelper$PositiveListener;-><init>(Lcom/elenco/snapcoder/util/JsDialogHelper;Landroid/widget/EditText;)V

    invoke-virtual {v0, v7, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 103
    :goto_1
    iget v4, p0, Lcom/elenco/snapcoder/util/JsDialogHelper;->mType:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 104
    const/high16 v4, 0x1040000

    new-instance v5, Lcom/elenco/snapcoder/util/JsDialogHelper$CancelListener;

    invoke-direct {v5, p0, v6}, Lcom/elenco/snapcoder/util/JsDialogHelper$CancelListener;-><init>(Lcom/elenco/snapcoder/util/JsDialogHelper;Lcom/elenco/snapcoder/util/JsDialogHelper$1;)V

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 106
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 107
    .local v1, "dialog":Landroid/support/v7/app/AlertDialog;
    goto :goto_0

    .line 94
    .end local v1    # "dialog":Landroid/support/v7/app/AlertDialog;
    .end local v2    # "edit":Landroid/widget/EditText;
    :cond_2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0a0041

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 95
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f080156

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 96
    .restart local v2    # "edit":Landroid/widget/EditText;
    iget-object v4, p0, Lcom/elenco/snapcoder/util/JsDialogHelper;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 97
    new-instance v4, Lcom/elenco/snapcoder/util/JsDialogHelper$PositiveListener;

    invoke-direct {v4, p0, v2}, Lcom/elenco/snapcoder/util/JsDialogHelper$PositiveListener;-><init>(Lcom/elenco/snapcoder/util/JsDialogHelper;Landroid/widget/EditText;)V

    invoke-virtual {v0, v7, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 98
    const v4, 0x7f080155

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/elenco/snapcoder/util/JsDialogHelper;->mMessage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_1
.end method
