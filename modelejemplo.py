# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Archivo(models.Model):
    nombre = models.CharField(max_length=255)
    nombre_temporal = models.CharField(max_length=255)
    ruta = models.CharField(max_length=255)
    tipo = models.CharField(max_length=100)
    tamano = models.IntegerField()
    descripcion_corta = models.CharField(max_length=150, blank=True, null=True)
    descripcion_larga = models.TextField(blank=True, null=True)
    descargas = models.IntegerField()
    created = models.DateTimeField()
    updated = models.DateTimeField(blank=True, null=True)
    fk_user = models.ForeignKey('AuthUser', models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'archivo'


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)
    name = models.CharField(max_length=255)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.BooleanField()
    username = models.CharField(unique=True, max_length=150)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.BooleanField()
    is_active = models.BooleanField()
    date_joined = models.DateTimeField()
    first_name = models.CharField(max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class Comentario(models.Model):
    contenido = models.TextField()
    created = models.DateTimeField()
    updated = models.DateTimeField(blank=True, null=True)
    fk_user = models.ForeignKey(AuthUser, models.DO_NOTHING, blank=True, null=True)
    fk_estatu = models.ForeignKey('CoreEstatu', models.DO_NOTHING)
    fk_publicacion = models.ForeignKey('Publicacion', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'comentario'


class CoreCategoria(models.Model):
    nombre = models.CharField(max_length=60)
    createdat = models.DateTimeField()
    updatedat = models.DateTimeField(blank=True, null=True)
    fk_user = models.ForeignKey(AuthUser, models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'core_categoria'


class CoreEstatu(models.Model):
    nombre = models.CharField(max_length=60)
    createdat = models.DateTimeField()
    updatedat = models.DateTimeField(blank=True, null=True)
    fk_user = models.ForeignKey(AuthUser, models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'core_estatu'


class DjangoAdminLog(models.Model):
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.PositiveSmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    action_time = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class Publicacion(models.Model):
    titulo = models.CharField(max_length=255)
    resumen = models.CharField(max_length=255, blank=True, null=True)
    contenido = models.TextField()
    created = models.DateTimeField()
    updated = models.DateTimeField(blank=True, null=True)
    vistas = models.IntegerField(blank=True, null=True)
    fk_categoria = models.ForeignKey(CoreCategoria, models.DO_NOTHING)
    fk_estatu = models.ForeignKey(CoreEstatu, models.DO_NOTHING)
    fk_foto_portada = models.ForeignKey(Archivo, models.DO_NOTHING)
    fk_user = models.ForeignKey(AuthUser, models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'publicacion'


class PublicacionArchivo(models.Model):
    created = models.DateTimeField()
    updated = models.DateTimeField(blank=True, null=True)
    fk_archivo = models.ForeignKey(Archivo, models.DO_NOTHING)
    fk_publicacion = models.ForeignKey(Publicacion, models.DO_NOTHING)
    fk_user = models.ForeignKey(AuthUser, models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'publicacion_archivo'
        unique_together = (('fk_publicacion', 'fk_archivo'),)
