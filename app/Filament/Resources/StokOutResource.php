<?php

namespace App\Filament\Resources;

use Filament\Forms;
use Filament\Tables;
use App\Models\Product;
use App\Models\StokOut;
use Filament\Forms\Form;
use Filament\Tables\Table;
use Filament\Resources\Resource;
use Illuminate\Database\Eloquent\Builder;
use App\Filament\Resources\StokOutResource\Pages;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use App\Filament\Resources\StokOutResource\RelationManagers;

class StokOutResource extends Resource
{
    protected static ?string $model = StokOut::class;

    protected static ?string $navigationGroup = 'Transaksi';

    protected static ?string $navigationLabel ='Transaksi Keluar';

    protected static ?string $navigationIcon = 'heroicon-o-building-storefront';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\DatePicker::make('date')
                    ->required(),
                Forms\Components\Select::make('product_id')
                    ->label('Product')
                    ->required()
                    // ->relationship('product', 'name')
                    ->options(Product::query()->pluck('name', 'id'))
                    ->reactive()
                    ->afterStateUpdated(fn ($state,Forms\Set $set) => 
                        $set('satuans_id', Product::find($state)->satuan->name)),
                
                Forms\Components\TextInput::make('qty')
                    ->Label('Jumlah Keluar')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('satuans_id'),
                Forms\Components\TextInput::make('description'),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('date')
                    ->date()
                    ->sortable(),
                Tables\Columns\TextColumn::make('product.name')
                    ->numeric()
                    ->sortable(),
                
                Tables\Columns\TextColumn::make('qty')
                    ->Label('Jumlah Keluar')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('description')
                    ->searchable(),
                Tables\Columns\TextColumn::make('created_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('updated_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\DeleteAction::make(),
                Tables\Actions\EditAction::make(),
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
            'index' => Pages\ListStokOuts::route('/'),
            'create' => Pages\CreateStokOut::route('/create'),
            // 'view' => Pages\ViewStokOut::route('/{record}'),
            // 'edit' => Pages\EditStokOut::route('/{record}/edit'),
        ];
    }
}