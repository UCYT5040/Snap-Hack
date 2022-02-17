.class Lcom/elenco/snapcoder/util/JsDialogHelper$PositiveListener;
.super Ljava/lang/Object;
.source "JsDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/elenco/snapcoder/util/JsDialogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PositiveListener"
.end annotation


# instance fields
.field private final mEdit:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/elenco/snapcoder/util/JsDialogHelper;


# direct methods
.method public constructor <init>(Lcom/elenco/snapcoder/util/JsDialogHelper;Landroid/widget/EditText;)V
    .locals 0
    .param p2, "edit"    # Landroid/widget/EditText;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/elenco/snapcoder/util/JsDialogHelper$PositiveListener;->this$0:Lcom/elenco/snapcoder/util/JsDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p2, p0, Lcom/elenco/snapcoder/util/JsDialogHelper$PositiveListener;->mEdit:Landroid/widget/EditText;

    .line 125
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lcom/elenco/snapcoder/util/JsDialogHelper$PositiveListener;->mEdit:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/elenco/snapcoder/util/JsDialogHelper$PositiveListener;->this$0:Lcom/elenco/snapcoder/util/JsDialogHelper;

    invoke-static {v0}, Lcom/elenco/snapcoder/util/JsDialogHelper;->access$100(Lcom/elenco/snapcoder/util/JsDialogHelper;)Landroid/webkit/JsResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/elenco/snapcoder/util/JsDialogHelper$PositiveListener;->this$0:Lcom/elenco/snapcoder/util/JsDialogHelper;

    invoke-static {v0}, Lcom/elenco/snapcoder/util/JsDialogHelper;->access$100(Lcom/elenco/snapcoder/util/JsDialogHelper;)Landroid/webkit/JsResult;

    move-result-object v0

    check-cast v0, Landroid/webkit/JsPromptResult;

    iget-object v1, p0, Lcom/elenco/snapcoder/util/JsDialogHelper$PositiveListener;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    goto :goto_0
.end method
