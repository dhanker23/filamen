<?php

namespace App\Filament\Resources;

use Filament\Forms;
use Filament\Tables;
use App\Models\Product;
use Filament\Forms\Form;
use Filament\Tables\Table;
use Filament\Resources\Resource;
use Filament\Forms\Components\Select;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
use Illuminate\Database\Eloquent\Builder;
use App\Filament\Resources\ProductResource\Pages;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use App\Filament\Resources\ProductResource\RelationManagers;

class ProductResource extends Resource
{
    protected static ?string $model = Product::class;

    protected static ?string $navigationGroup = 'Master Data';

    protected static ?string $navigationLabel ='Product Name';

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                TextInput::make('name')
                    ->label('Nama Product')
                    ->autocapitalize('words')
                    ->unique('products', 'name', ignoreRecord: true)
                    ->required()
                    ->maxLength(255),
                    
                TextInput::make('qty')
                    ->required()
                    ->numeric()
                    ->default(0),
                    
                Select::make('satuan_id')
                    ->label('Satuan')
                    ->relationship('satuan', 'name') 
                    ->required(),
                                    
                Select::make('lokasi_id')
                    ->label('Lokasi')
                    ->searchable()
                    ->preload()
                    ->relationship('lokasi', 'lokasi')
                    ->required(),
                    
                 Select::make('kategori_id')
                    ->label('Kategori')
                    ->searchable()
                    ->preload()
                    ->relationship('kategori', 'nama')
                    ->required(),
                    
                TextInput::make('deskripsi')
                    ->maxLength(255),
            ])->columns(1);            
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                 TextColumn::make('name')
                    ->label('Nama Product')   
                    ->searchable(),
                 TextColumn::make('qty')
                    ->Label('Total Stok')
                    ->numeric(),
                TextColumn::make('satuan.name')
                    ->numeric()
                    ->sortable(),
                TextColumn::make('lokasi.lokasi')
                    ->numeric(),
                TextColumn::make('kategori.nama')
                    ->numeric()
                    ->sortable(),
                TextColumn::make('deskripsi')
                    ->searchable()
                    ->toggleable(isToggledHiddenByDefault: true),
                TextColumn::make('created_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                TextColumn::make('updated_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListProducts::route('/'),
            'create' => Pages\CreateProduct::route('/create'),
            // 'view' => Pages\ViewProduct::route('/{record}'),
            'edit' => Pages\EditProduct::route('/{record}/edit'),
        ];
    }
}