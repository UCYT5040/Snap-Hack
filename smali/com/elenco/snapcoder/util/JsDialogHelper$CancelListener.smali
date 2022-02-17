.class Lcom/elenco/snapcoder/util/JsDialogHelper$CancelListener;
.super Ljava/lang/Object;
.source "JsDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/elenco/snapcoder/util/JsDialogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/util/JsDialogHelper;


# direct methods
.method private constructor <init>(Lcom/elenco/snapcoder/util/JsDialogHelper;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/elenco/snapcoder/util/JsDialogHelper$CancelListener;->this$0:Lcom/elenco/snapcoder/util/JsDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/elenco/snapcoder/util/JsDialogHelper;Lcom/elenco/snapcoder/util/JsDialogHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/elenco/snapcoder/util/JsDialogHelper;
    .param p2, "x1"    # Lcom/elenco/snapcoder/util/JsDialogHelper$1;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/elenco/snapcoder/util/JsDialogHelper$CancelListener;-><init>(Lcom/elenco/snapcoder/util/JsDialogHelper;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/elenco/snapcoder/util/JsDialogHelper$CancelListener;->this$0:Lcom/elenco/snapcoder/util/JsDialogHelper;

    invoke-static {v0}, Lcom/elenco/snapcoder/util/JsDialogHelper;->access$100(Lcom/elenco/snapcoder/util/JsDialogHelper;)Landroid/webkit/JsResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/JsResult;->cancel()V

    .line 114
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lcom/elenco/snapcoder/util/JsDialogHelper$CancelListener;->this$0:Lcom/elenco/snapcoder/util/JsDialogHelper;

    invoke-static {v0}, Lcom/elenco/snapcoder/util/JsDialogHelper;->access$100(Lcom/elenco/snapcoder/util/JsDialogHelper;)Landroid/webkit/JsResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/JsResult;->cancel()V

    .line 118
    return-void
.end method
