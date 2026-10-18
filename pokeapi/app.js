const input = document.getElementById('pokemonInput');
const btn = document.getElementById('searchBtn');
const resultadoDiv = document.getElementById('resultado');

btn.addEventListener('click', async () => {
    const nombre = input.value.trim().toLowerCase();
    if (!nombre) return;

    resultadoDiv.innerHTML = '<p>Cargando...</p>';

    try {
        const response = await fetch(`https://pokeapi.co/api/v2/pokemon/${nombre}`);

        if (!response.ok) {
            throw new Error("Pokémon no encontrado");
        }

        const data = await response.json();

        // Convertir peso (hectogramos a kg) y altura (decímetros a metros)
        const pesoKg = data.weight / 10;
        const alturaM = data.height / 10;
        
        // Obtener tipos
        const tipos = data.types.map(t => t.type.name).join(', ');

        resultadoDiv.innerHTML = `
            <div class="card">
                <h2>${data.name.toUpperCase()}</h2>
                <img src="${data.sprites.front_default}" alt="${data.name}">
                <p><strong>Tipos:</strong> ${tipos}</p>
                <p><strong>Peso:</strong> ${pesoKg} kg</p>
                <p><strong>Altura:</strong> ${alturaM} m</p>
            </div>
        `;
    } catch (error) {
        resultadoDiv.innerHTML = `<p class="error">Error: ${error.message}. Verifica el nombre o tu conexión.</p>`;
    }
});